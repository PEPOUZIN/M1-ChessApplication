import React, { useState } from 'react';
import { Chessboard } from 'react-chessboard';
import { Chess } from 'chess.js';

const PGNReaderApp: React.FC = () => {
  const [game] = useState(new Chess());
  const [fen, setFen] = useState(game.fen());
  const [moves, setMoves] = useState<string[]>([]);
  const [currentMoveIndex, setCurrentMoveIndex] = useState(0);
  const [errorMessage, setErrorMessage] = useState<string | null>(null);

  const handlePGNUpload = (event: React.ChangeEvent<HTMLInputElement>) => {
    const file = event.target.files?.[0];
    if (file) {
      const reader = new FileReader();
      reader.onload = (e) => {
        const pgn = e.target?.result as string;
        const cleanedPgn = cleanPGN(pgn);

        // Essayer de charger le PGN nettoyé
        game.loadPgn(cleanedPgn); // Charger le PGN
        if (game.isGameOver()) {
          setErrorMessage('Erreur : Le fichier PGN est invalide ou mal formé.');
          return;
        }

        const moveList = game.history(); // Récupérer l'historique des coups
        setMoves(moveList); // Mettre à jour l'état des coups
        setFen(game.fen()); // Mettre à jour la position de l'échiquier
        setCurrentMoveIndex(0); // Réinitialiser l'indice du coup actuel
        setErrorMessage(null);
      };
      reader.readAsText(file);
    }
  };

  // Fonction pour nettoyer le PGN si nécessaire (enlever les retours à la ligne et espaces inutiles)
  const cleanPGN = (pgn: string): string => {
    return pgn.replace(/\r?\n|\r/g, ' ').replace(/\s+/g, ' ').trim();
  };

  const goToMove = (index: number) => {
    if (index >= 0 && index < moves.length) {
      game.reset(); // Réinitialiser le jeu
      for (let i = 0; i <= index; i++) {
        game.move(moves[i]); // Jouer chaque coup jusqu'à l'index
      }
      setFen(game.fen()); // Mettre à jour la position sur l'échiquier
      setCurrentMoveIndex(index); // Mettre à jour l'indice du coup actuel
    }
  };

  const nextMove = () => {
    if (currentMoveIndex < moves.length - 1) {
      goToMove(currentMoveIndex + 1); // Passer au coup suivant
    }
  };

  const prevMove = () => {
    if (currentMoveIndex > 0) {
      goToMove(currentMoveIndex - 1); // Retourner au coup précédent
    }
  };

  return (
    <div>
      <div>
        <h2>Lecteur de parties PGN</h2>
        <input type="file" accept=".pgn" onChange={handlePGNUpload} />
        {errorMessage && <p style={{ color: 'red' }}>{errorMessage}</p>}
        <Chessboard position={fen} arePiecesDraggable={false} />
        <div>
          <button onClick={prevMove} disabled={currentMoveIndex === 0}>
            Coup précédent
          </button>
          <button onClick={nextMove} disabled={currentMoveIndex === moves.length - 1}>
            Coup suivant
          </button>
        </div>
        <p>
          Coup actuel : {currentMoveIndex + 1}/{moves.length} {/* Affiche le coup actuel */}
        </p>
      </div>
      <div>
        <h4>Liste des coups :</h4>
        <ol>
          {moves.map((move, index) => (
            <li
              key={index}
              style={{ fontWeight: currentMoveIndex === index ? 'bold' : 'normal' }}
            >
              {move}
            </li>
          ))}
        </ol>
      </div>
    </div>
  );
};

export default PGNReaderApp;
