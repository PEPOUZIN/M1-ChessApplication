import React, { useState, useEffect } from 'react';
import { Chessboard } from 'react-chessboard';
import { Chess } from 'chess.js';
import { useLocation } from 'react-router-dom';
import styles from '../css/ChessGameWithBotApp.module.css'; // Importez votre feuille de style

const skillLevel = 1;

const ChessGameWithBotApp: React.FC = () => {
  const [game] = useState(new Chess());
  const [isBotTurn, setIsBotTurn] = useState(false);
  const [fen, setFen] = useState(game.fen());
  const [playerTime, setPlayerTime] = useState(2 * 60);
  const [botTime, setBotTime] = useState(2 * 60);
  const [isGameOver, setIsGameOver] = useState(false);
  const [stockfish, setStockfish] = useState<Worker | null>(null);
  const [resultMessage, setResultMessage] = useState('');
  const [movesHistory, setMovesHistory] = useState<string[]>([]);
  const [isWhiteChronoRunning, setIsWhiteChronoRunning] = useState(false);
  const [isBlackChronoRunning, setIsBlackChronoRunning] = useState(false);
  const [firstMoveDone, setFirstMoveDone] = useState(false);
  const [opening, setOpening] = useState('Ouverture inconnu'); // Ajout pour l'ouverture

  const location = useLocation();
  const queryParams = new URLSearchParams(location.search);
  const userName = queryParams.get('username') || 'Guest';

  const initializeStockfish = () => {
    const worker = new Worker('/stockfish.js');
    worker.postMessage('uci');
    worker.onmessage = (event) => {
      if (event.data === 'uciok') {
        worker.postMessage(`setoption name Skill Level value ${skillLevel}`);
        worker.postMessage('isready');
      }
      if (event.data === 'readyok') {
        console.log('Stockfish prêt avec le niveau configuré.');
        setStockfish(worker);
      }
    };
  };

  const checkGameStatus = () => {
    if (game.isCheckmate()) {
      const winner = game.turn() === 'w' ? 'Le bot' : 'Vous';
      setResultMessage(`Échec et mat ! ${winner} gagne !`);
      setIsGameOver(true);
    } else if (game.isStalemate() || game.isInsufficientMaterial() || game.isThreefoldRepetition() || game.isDraw()) {
      setResultMessage('Match nul !');
      setIsGameOver(true);
    }
  };

  const handleMove = (move: { from: string; to: string }): boolean => {
    if (!isGameOver) {
      const moveResult = game.move({ from: move.from, to: move.to, promotion: 'q' });
      if (moveResult) {
        setFen(game.fen());
        const newHistory = [...movesHistory];
        if (game.turn() === 'b') {
          newHistory.push(moveResult.san); // Ajouter le coup des Blancs
        } else {
          newHistory[newHistory.length - 1] += ` ${moveResult.san}`; // Ajouter le coup des Noirs
        }
        setMovesHistory(newHistory);

        if (!firstMoveDone) {
          setFirstMoveDone(true); // Activer le comportement après le premier tour
        }

        if (firstMoveDone) {
          // Après le premier tour, activer les chronomètres normalement
          if (game.turn() === 'w') {
            setIsWhiteChronoRunning(true);
            setIsBlackChronoRunning(false);
          } else {
            setIsWhiteChronoRunning(false);
            setIsBlackChronoRunning(true);
          }
        }

        setIsBotTurn(game.turn() === 'b');
        checkGameStatus();

        // Placeholder pour mise à jour de l'ouverture
        if (movesHistory.length === 1) {
          setOpening('Ouverture P+1'); // Exemple
        }
        return true;
      }
    }
    return false;
  };

  const fetchBotMove = () => {
    if (stockfish) {
      stockfish.postMessage(`position fen ${fen}`);
      stockfish.postMessage(`go depth ${skillLevel * 2}`);
      stockfish.onmessage = (event) => {
        const output = event.data;
        if (output.includes('bestmove')) {
          const bestMove = output.split(' ')[1];
          const from = bestMove.slice(0, 2);
          const to = bestMove.slice(2, 4);
          const moveResult = game.move({ from, to });
          if (moveResult) {
            setFen(game.fen());
            const newHistory = [...movesHistory];
            newHistory[newHistory.length - 1] += ` ${moveResult.san}`; // Ajouter le coup du bot
            setMovesHistory(newHistory);

            if (!firstMoveDone) {
              setFirstMoveDone(true); // Activer le comportement après le premier tour
            }

            if (firstMoveDone) {
              setIsWhiteChronoRunning(true); // Activer le chrono des Blancs après le coup du bot
              setIsBlackChronoRunning(false); // Stopper le chrono des Noirs
            }

            setIsBotTurn(false);
            checkGameStatus();
          }
        }
      };
    }
  };

  useEffect(() => {
    initializeStockfish();
    return () => {
      if (stockfish) {
        stockfish.terminate();
      }
    };
  }, []);

  useEffect(() => {
    if (isBotTurn) {
      const timeout = setTimeout(() => {
        fetchBotMove();
      }, Math.random() * 1000 + 2000);
      return () => clearTimeout(timeout);
    }
  }, [isBotTurn]);

  useEffect(() => {
    let timer: number;
    if (!isGameOver) {
      timer = setInterval(() => {
        if (isWhiteChronoRunning) {
          // Chronomètre des Blancs
          setPlayerTime((prev) => {
            if (prev <= 0) {
              setResultMessage('Temps écoulé pour le joueur. Le bot gagne !');
              setIsGameOver(true);
              return 0;
            }
            return prev - 1;
          });
        } else if (isBlackChronoRunning) {
          // Chronomètre des Noirs
          setBotTime((prev) => {
            if (prev <= 0) {
              setResultMessage('Temps écoulé pour le bot. Vous gagnez !');
              setIsGameOver(true);
              return 0;
            }
            return prev - 1;
          });
        }
      }, 1000);
    }
    return () => clearInterval(timer);
  }, [isWhiteChronoRunning, isBlackChronoRunning, isGameOver]);

  const formatTime = (time: number): string => {
    const minutes = Math.floor(time / 60).toString().padStart(2, '0');
    const seconds = (time % 60).toString().padStart(2, '0');
    return `${minutes}:${seconds}`;
  };

  const downloadPGN = () => {
    const pgn = game.pgn();
    const metadata = `
    [Event "Partie perso"]
    [Site "url ou on joue"]
    [Date "${new Date().toISOString().slice(0, 10)}"]
    [Round "-"]
    [White "${userName}"]
    [Black "StockFish IA"]
    [Result "${game.isGameOver() ? (game.turn() === 'w' ? '1-0' : '0-1') : '1/2-1/2'}"]
    [UTCDate "${new Date().toISOString().slice(0, 10)}"]
    [UTCTime "${new Date().toISOString().slice(11, 19)}"]
    [WhiteElo "1500"]
    [BlackElo "1500"]
    [WhiteRatingDiff "0"]
    [BlackRatingDiff "0"]
    [ECO "ecoAajouter"]
    [Opening "${opening}"]
    [TimeControl "300+3"]
    [Termination "Normal"]
  `;

    const fullPGN = metadata + "\n\n" + pgn;
    const blob = new Blob([fullPGN], { type: 'text/plain' });
    const link = document.createElement('a');
    link.href = URL.createObjectURL(blob);
    link.download = `game_${userName}_vs_bot_${new Date().toISOString().slice(0, 10)}.pgn`;
    document.body.appendChild(link);
    link.click();
    document.body.removeChild(link);
  };

  return (
    <div className={styles.container}>
      <div className={styles.chess_game_container}>
        <div className={styles.chessboard_section}>
          <div className={styles.time_container}>
            <div className={styles.time_display}>
              <h3>{userName}</h3>
              <p>Temps restant (blanc): {formatTime(playerTime)}</p>
            </div>
            <div className={styles.time_display}>
              <h3>StockFish IA</h3>
              <p>Temps restant (noir): {formatTime(botTime)}</p>
            </div>
          </div>
          <Chessboard
            position={fen}
            onPieceDrop={(sourceSquare, targetSquare) =>
              handleMove({ from: sourceSquare, to: targetSquare })
            }
            arePiecesDraggable={!isBotTurn && !isGameOver}
          />
        </div>

        <div className={styles.info_section}>
          <h4>Ouverture :</h4>
          <p>{opening}</p>

          <h4>Historique des coups:</h4>
          <ol>
            {movesHistory.map((movePair, index) => (
              <li key={index}>{movePair}</li>
            ))}
          </ol>
          {isGameOver && (
            <>
              <p>{resultMessage}</p>
              <button onClick={downloadPGN}>Télécharger le PGN</button>
            </>
          )}
        </div>
      </div>
    </div>
  );
};

export default ChessGameWithBotApp;
