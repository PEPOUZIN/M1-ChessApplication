import { useNavigate } from 'react-router-dom';
import chessImage from '../assets/chess.png';
import styles from '../css/MenuPrincipal.module.css';
import React from "react";

function Mpl() {
  const navigate = useNavigate();  // Hook pour la navigation

  const handleLichessLogin = () => {
    window.location.href = 'http://localhost:3000/login'; // Redirection vers le backend pour OAuth
    console.log('/loginlichess');
  };

  const handlePlayBot = () => {
    window.location.href = '/page-bot-aprime'; // Rediriger vers la page de jeu avec le bot
    console.log('/page-bot-aprime');
  };

  const handlePageCo = () => {
    console.log('Redirection vers la page connexion');
    navigate('/connexion'); // Cela devrait fonctionner si vous avez correctement configuré le navigateur
  };
  
  return (
    <div className={styles.container}>
      <div className={styles.header}>
        <h1 className={styles.titre}>OpenChess</h1>
        <img src={chessImage} className={styles.logo} alt="Logo projet" />
      </div>

      <div className={styles.card}>
        <button className={styles.button} onClick={handleLichessLogin}>
          Connexion avec Lichess
        </button>
        <button className={styles.button} onClick={handlePlayBot}>
          Jouer contre un bot
        </button>
        <button className={styles.button} onClick={handlePageCo}>
          Connexion
        </button>
      </div>
    </div>
  );
}

export default Mpl;
