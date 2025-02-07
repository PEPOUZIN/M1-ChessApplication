import React, { useState, useEffect, useMemo, useCallback } from "react";
import { Chessboard } from "react-chessboard";
import { Chess, Move } from "chess.js";
import socket from "./socket/socket.js";
import { useNavigate } from "react-router-dom";
import styles from "../css/Game.module.css"

interface GameProps {
  username: string;
  players: { id: string; username: string }[];
  room: string;
  orientation: "white" | "black";
  cleanup: () => void;
}

interface MoveHistory {
  white: string;
  black: string;
}

/**
 * @brief Composant React pour une interface de jeu d'échecs.
 *
 * Ce composant gère l'état du jeu d'échecs, met à jour l'échiquier,
 * et communique avec le serveur pour des parties multijoueurs.
 *
 * @param players Liste des joueurs dans la salle.
 * @param room Identifiant de la salle de jeu.
 * @param orientation Orientation de l'échiquier pour le joueur (blanc ou noir).
 * @param cleanup Fonction de nettoyage appelée lors de la sortie de la partie.
 */
export default function Game({ players, room, orientation, cleanup }: GameProps) {
  const chess = useMemo(() => new Chess(), []);
  const [fen, setFen] = useState<string>(chess.fen());
  const [over, setOver] = useState<string>("");
  const [movesHistory, setMovesHistory] = useState<string[]>([]);
  const [playerDisconnected, setPlayerDisconnected] = useState<boolean>(false); // Variable pour suivre si un joueur est déconnecté
  const navigate = useNavigate();

  /**
   * @brief Tente de jouer un coup et met à jour l'état du jeu.
   *
   * @param move Coup à jouer sous forme d'objet Move.
   * @return Résultat du coup joué, ou null si invalide.
   */
  const makeAMove = useCallback(
    (move: Move) => {
      try {
        const result = chess.move(move);
        if (!result) return null; // Vérifiez que le coup est valide
  
        setFen(chess.fen()); // Met à jour la position sur le plateau
        setMovesHistory((prev) => [...prev, result.san]); // Ajoute le coup à l'historique
  
        // Vérifie si la partie est terminée
        if (chess.isGameOver()) {
          if (chess.isCheckmate()) {
            setOver(`Échec et mat ! ${chess.turn() === "w" ? "noir" : "blanc"} gagne !`);
          } else if (chess.isDraw()) {
            setOver("Partie nulle");
          } else {
            setOver("Partie terminée");
          }
        }
  
        return result;
      } catch (error) {
        console.error("Erreur lors de la tentative de coup:", error);
        return null;
      }
    },
    [chess]
  );
  

  /**
   * @brief Écoute les mouvements envoyés depuis le serveur.
   */
  useEffect(() => {
    socket.on("move", (move: Move) => {
      makeAMove(move);
    });
    return () => {
      socket.off("move");
    };
  }, [makeAMove]);

  /**
   * @brief Gère la déconnexion et reconnexion des joueurs.
   */
  useEffect(() => {
    socket.on("playerDisconnected", (player) => {
      setOver(`${player.username} s'est déconnecté`);
      setPlayerDisconnected(true);
    });

    socket.on("playerReconnected", () => {
      setPlayerDisconnected(false);
      setOver(""); // Réinitialise l'état de déconnexion
    });

    return () => {
      socket.off("playerDisconnected");
      socket.off("playerReconnected");
    };
  }, []);

  /**
   * @brief Gère le déplacement des pièces sur l'échiquier.
   *
   * @param sourceSquare Case source.
   * @param targetSquare Case cible.
   * @return True si le coup est valide, sinon false.
   */
  function onDrop(sourceSquare: string, targetSquare: string): boolean {
    if (chess.turn() !== orientation[0]) return false; // Vérifie si c'est le tour du joueur
    if (players.length < 2) return false; // Vérifie si les deux joueurs sont connectés

    const moveData: Move = {
      from: sourceSquare,
      to: targetSquare,
      promotion: "q", // Promotion par défaut en reine
    };

    const move = makeAMove(moveData);
    if (!move) return false;

    socket.emit("move", { move, room }); // Envoie le coup au serveur
    return true;
  }

  /**
   * @brief Télécharge l'historique des coups sous forme de fichier PGN.
   */
  const downloadPGN = () => {
    if (movesHistory.length === 0) {
      alert("Aucun coup enregistré pour générer le fichier PGN.");
      return;
    }
  
    const pgn = chess.pgn({ maxWidth: 80, newline: "\n" });
    const metadata = 
    `[Event "Partie en ligne"]
    [Site "VotreSite"]
    [Date "${new Date().toISOString().slice(0, 10)}"]
    [Round "-"]
    [White "${orientation === "white" ? players[0]?.username : players[1]?.username || "Joueur"}"]
    [Black "${orientation === "black" ? players[0]?.username : players[1]?.username || "Joueur"}"]
    [Result "${chess.isGameOver() ? (chess.isCheckmate() ? (chess.turn() === "w" ? "0-1" : "1-0") : "1/2-1/2") : "*"}"]
    ;`;
  
    const fullPGN = metadata + "\n\n" + pgn;
    const blob = new Blob([fullPGN], { type: "text/plain" });
    const link = document.createElement("a");
    link.href = URL.createObjectURL(blob);
    link.download = `game_${room}_${new Date().toISOString().slice(0, 10)}.pgn`;
    document.body.appendChild(link);
    link.click();
    document.body.removeChild(link);
  };
  

  /**
   * @brief Structure l'historique des coups en paires (blanc - noir).
   * @return Liste des coups groupés par paires.
   */
  const getMoveHistory = (): MoveHistory[] => {
    const moves: MoveHistory[] = [];
    for (let i = 0; i < movesHistory.length; i += 2) {
      const whiteMove = movesHistory[i];
      const blackMove = movesHistory[i + 1];
      moves.push({ white: whiteMove, black: blackMove });
    }
    return moves;
  };
  
  const moveHistory = getMoveHistory();
  



  return (
    <div className={styles.chess_game_container}>
      <div className={styles.chessboard_section}>
        <h1>Salle : {room}</h1>
        <Chessboard position={fen} onPieceDrop={onDrop} boardOrientation={orientation} />
        
        <button className={styles.closeRoom}
          onClick={() => {
            socket.emit("closeRoom", { roomId: room });
            cleanup();
            navigate(-1);
          }}
        >
          Quitter la partie
        </button>
      </div>

      <div className={styles.joueurs}>
        <h3>Joueurs</h3>
        <ul>
          {players.map((p) => (
            <li key={p.id}>{p.username}</li>
          ))}
        </ul>

        <h4>Historique des coups :</h4>
        <div className={styles.info_section}>
          <ul>
            {moveHistory.map((pair, index) => (
              <li key={index}>
                <span style={{ display: "inline-block", width: "45%" }}>
                  {pair.white}
                </span>
                <span style={{ display: "inline-block", width: "45%" }}>
                  {pair.black}
                </span>
              </li>
            ))}
          </ul>
        </div>

        {over && (
          <div>
            <p>{over}</p>
            <button onClick={downloadPGN} disabled={playerDisconnected}>Télécharger le PGN</button>
          </div>
        )}
      </div>
    </div>
  );
}
