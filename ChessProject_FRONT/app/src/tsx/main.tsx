import { StrictMode } from 'react';
import { createRoot } from 'react-dom/client';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import ChessGameWithBot from './ChessGameWithBot.tsx'; // Jeu avec le bot
import ChessGameWithBotApp from './ChessGameWithBotApp.tsx'; // Jeu avec le bot
import Mpl from './MenuPrincipal.tsx'; // Page principale
import Profil from './profil.tsx'
import '../css/index.css'
import PlayerVsPlayer from './PlayerVsPlayer.tsx'
import React from 'react';
import PGNReaderApp from './PGNReaderApp.tsx'
import PageConnexion from './PageConnexion.tsx';

/**
 * @function renderApp
 * @brief Fonction d'entrée qui monte l'application React et définit les routes.
 *        Elle utilise `StrictMode` pour activer les vérifications supplémentaires pendant le développement.
 * @returns {void}
 */
createRoot(document.getElementById('root')!).render(
  <StrictMode>
    <Router>
      <Routes>
        /**
         * @Route - Page principale du menu
         * @brief Affiche le menu principal avec les options de connexion ou de jeu.
         */
        <Route path="/" element={<Mpl />} /> {/* Page principale */}

        /**
         * @Route - Page de profil utilisateur
         * @brief Affiche le profil de l'utilisateur.
         */
        <Route path="/profil" element={<Profil />} /> {/* Profil */}

        /**
         * @Route - Page de jeu avec le bot
         * @brief Affiche le jeu avec un bot, en mode "Guest".
         */
        <Route path="/page-bot-aprime" element={<ChessGameWithBot userName="Guest" />} /> {/* Jeu avec le bot */}

        /**
         * @Route  - Page de jeu avec un autre bot
         * @brief Affiche un autre jeu avec un bot.
         */
        <Route path="/page-bot-bprime" element={<ChessGameWithBotApp />} /> {/* Jeu avec le bot */}

        /**
         * @Route - Page de jeu joueur contre joueur
         * @brief Affiche un jeu où deux joueurs peuvent s'affronter.
         */
        <Route path="/playervsplayer" element={<PlayerVsPlayer />} />

        /**
         * @Route  - Lecture de fichier PGN
         * @brief Affiche l'outil pour lire et afficher les parties d'échecs à partir de fichiers PGN.
         */
        <Route path="/pgn-reader" element={<PGNReaderApp />} />

        /**
         * @Route  - Connexion
         * @brief
         */
        <Route path="/connexion" element={<PageConnexion />} />
      </Routes>
    </Router>
  </StrictMode>
);
