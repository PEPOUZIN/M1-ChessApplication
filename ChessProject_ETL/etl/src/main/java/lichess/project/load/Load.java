/**
 * @file Load.java
 * @brief Classe qui gère l'insertion des données dans la base de données pour les joueurs, les jeux, et les tournois.
 *
 * Cette classe permet d'insérer des informations relatives à des joueurs, des jeux d'échecs, des tours de tournoi, ainsi que des statistiques dans une base de données.
 * Elle se connecte à une base de données SQL et permet d'effectuer des mises à jour et des insertions par lots, tout en gérant les transactions pour garantir l'intégrité des données.
 * 
 * @see PGNparser
 * @see ConnectSQL
 * @see ChessGame
 */

package lichess.project.load;

import lichess.project.DAO.ConnectSQL;
import lichess.project.entity.ChessGame;

import java.sql.*;
import java.time.Instant;
import java.time.LocalDate;
import java.time.ZoneId;

/**
 * @class Load
 * @brief Classe permettant de charger et insérer les données dans la base de données.
 *
 * Cette classe gère l'insertion des statistiques de joueurs, des informations de tournoi, et des mouvements dans une partie d'échecs dans la base de données.
 */
public class Load {

    private ConnectSQL dbConnection; /**< Objet de connexion à la base de données */

    /**
     * @brief Constructeur de la classe Load.
     * @details Ce constructeur initialise l'objet `dbConnection` pour se connecter à la base de données.
     */
    public Load() {
        this.dbConnection = new ConnectSQL();
    }

    /**
     * @brief Obtient la connexion à la base de données.
     * @return L'objet ConnectSQL pour la gestion de la connexion.
     */
    public ConnectSQL getDBConnect() {
        return this.dbConnection;
    }

    /**
     * @brief Insère les statistiques d'un joueur dans la base de données.
     *
     * Cette méthode met à jour les statistiques d'un joueur spécifique, y compris son Elo, son titre, son nombre de parties jouées,
     * ses ratios de victoire, et plus encore.
     *
     * @param name Le nom du joueur à mettre à jour.
     * @param eloStr Le classement Elo du joueur (classique).
     * @param eloBlitzStr Le classement Elo du joueur en Blitz.
     * @param eloFastStr Le classement Elo du joueur en Fast.
     * @param eloBulletStr Le classement Elo du joueur en Bullet.
     * @param nbGameStr Le nombre de parties jouées.
     * @param dateStr La date de création du joueur sous forme de timestamp.
     * @param title Le titre du joueur (ex : Grand Maître, Maître).
     * @param ratioStr Le ratio de victoire global du joueur.
     * @param ratioWStr Le ratio de victoire du joueur en tant que joueur blanc.
     * @param ratioBStr Le ratio de victoire du joueur en tant que joueur noir.
     * @param opening L'ouverture préférée du joueur.
     * @param nbmoves Le nombre de coups moyens pour gagner.
     *
     * @throws SQLException Si une erreur de base de données se produit.
     */
    public void insertStatsGame(String name, String eloStr, String eloBlitzStr, String eloFastStr, String eloBulletStr, String nbGameStr, String dateStr, String title, String ratioStr, String ratioWStr, String ratioBStr, String opening, String nbmoves) throws SQLException {

        String sql = "UPDATE public.player " +
                "SET elo_classic = ?, elo_blitz = ?, elo_fast = ?, elo_bullet = ?, title = ?, nb_game = ?, creation_date = ?, ratio = ?, ratio_white = ?, ratio_black = ?, favorite_open = ? , nb_move_to_win = ? " +
                "WHERE name = ?";

        try (Connection conn = dbConnection.connect();
            PreparedStatement pstmt = conn.prepareStatement(sql)) {

            // Conversion des paramètres string en types appropriés
            int elo = (eloStr == null || eloStr.isEmpty()) ? 0 : Integer.parseInt(eloStr);
            int eloBlitz = (eloBlitzStr == null || eloBlitzStr.isEmpty()) ? 0 : Integer.parseInt(eloBlitzStr);
            int eloFast = (eloFastStr == null || eloFastStr.isEmpty()) ? 0 : Integer.parseInt(eloFastStr);
            int eloBullet = (eloBulletStr == null || eloBulletStr.isEmpty()) ? 0 : Integer.parseInt(eloBulletStr);
            int nbGame = (nbGameStr == null || nbGameStr.isEmpty()) ? 0 : Integer.parseInt(nbGameStr);
            long timestamp = Long.parseLong(dateStr);
            Instant instant = Instant.ofEpochMilli(timestamp);
            LocalDate localDate = instant.atZone(ZoneId.systemDefault()).toLocalDate();
            Date sqlDate = Date.valueOf(localDate);
            double ratio = Double.parseDouble(ratioStr);
            double ratioW = Double.parseDouble(ratioWStr);
            double ratioB = Double.parseDouble(ratioBStr);
            double nb_moves = (nbmoves == null || nbmoves.isEmpty()) ? 0.0 : Double.parseDouble(nbmoves);

            // Paramétrage de la requête
            pstmt.setInt(1, elo);
            pstmt.setInt(2, eloBlitz);
            pstmt.setInt(3, eloFast);
            pstmt.setInt(4, eloBullet);
            pstmt.setString(5, title);
            pstmt.setInt(6, nbGame);
            pstmt.setDate(7, sqlDate);
            pstmt.setDouble(8, ratio);
            pstmt.setDouble(9, ratioW);
            pstmt.setDouble(10, ratioB);
            pstmt.setString(11, opening);
            pstmt.setDouble(12, nb_moves);
            pstmt.setString(13, name);

            // Exécution de la requête
            int rowsAffected = pstmt.executeUpdate();
        }
    }

    /**
     * @brief Insère un tournoi dans la base de données.
     *
     * Cette méthode insère un tournoi dans la table `tournament` de la base de données.
     *
     * @param name Le nom du tournoi à insérer.
     *
     * @throws SQLException Si une erreur de base de données se produit.
     */
    public void insertTournament(String name) throws SQLException {
        String sql = "INSERT INTO public.tournament (name) VALUES (?)";
        try (Connection conn = dbConnection.connect();
            PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, name);
            pstmt.executeUpdate();
        }
    }

    /**
     * @brief Insère les informations d'une partie d'échecs dans la base de données, y compris les joueurs, les mouvements et les résultats.
     *
     * Cette méthode insère des informations sur un jeu d'échecs, y compris les informations des joueurs, les mouvements effectués, et les résultats,
     * tout en gérant les transactions de manière sécurisée.
     *
     * @param game L'objet ChessGame contenant toutes les informations relatives à la partie d'échecs.
     *
     * @throws SQLException Si une erreur de base de données se produit.
     */
    public void batchInsert(ChessGame game) throws SQLException {
        String sqlInsertTournament = "INSERT INTO public.tournament (name) VALUES (?)";
        String sqlInsertPlayer = "INSERT INTO public.player (name) VALUES (?) ON CONFLICT (name) DO NOTHING";
        String sqlInsertGame = "INSERT INTO public.game (serie, id_tournament, event, site, white_name, black_name, result, datetime, whiteelo, blackelo, whiteratingdiff, " +
                "blackratingdiff, eco, opening, timectl, term, analyzed, nb_moves, hash_code) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?) " +
                "ON CONFLICT (hash_code) DO NOTHING "+
                "RETURNING id";
        String sqlInsertMove = "INSERT INTO public.moves (game_id, \"ORDER\", w_cell, w_eval, w_timestamp, b_cell, b_eval, b_timestamp) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

        try (Connection conn = dbConnection.connect()) {
            conn.setAutoCommit(false);
            try (
                PreparedStatement pstmtTournament = conn.prepareStatement(sqlInsertTournament);
                PreparedStatement pstmtPlayer = conn.prepareStatement(sqlInsertPlayer);
                PreparedStatement pstmtGame = conn.prepareStatement(sqlInsertGame);
                PreparedStatement pstmtMove = conn.prepareStatement(sqlInsertMove)
            ) {
                // Insertion des joueurs
                pstmtPlayer.setString(1, game.getWhitePlayer().toString());
                pstmtPlayer.addBatch();
                pstmtPlayer.setString(1, game.getBlackPlayer().toString());
                pstmtPlayer.addBatch();

                pstmtPlayer.executeBatch();

                // Insertion de la partie
                String whiteEloStr = String.valueOf(game.getWhitePlayer().getElo());
                String blackEloStr = String.valueOf(game.getBlackPlayer().getElo());
                String whiteRatingDiffStr = String.valueOf(game.getWhiteRatingDiff());
                String blackRatingDiffStr = String.valueOf(game.getBlackRatingDiff());
                // format yyyy-mm-dd hh:mm:ss
                String timestampStr = game.getDate();
                Timestamp timestamp = (timestampStr == null || timestampStr.equals("") || timestampStr.isEmpty()) ? null : Timestamp.valueOf(timestampStr); 
                
                int whiteElo = (whiteEloStr == null || whiteEloStr.equals("?") || whiteEloStr.isEmpty()) ? 0 : Integer.parseInt(whiteEloStr);
                int blackElo = (blackEloStr == null || blackEloStr.equals("?") || blackEloStr.isEmpty()) ? 0 : Integer.parseInt(blackEloStr);
                int whiteRatingDiff = (whiteRatingDiffStr == null || whiteRatingDiffStr.equals("?") || whiteRatingDiffStr.isEmpty()) ? 0 : Integer.parseInt(whiteRatingDiffStr);
                int blackRatingDiff = (blackRatingDiffStr == null || blackRatingDiffStr.equals("?") || blackRatingDiffStr.isEmpty()) ? 0 : Integer.parseInt(blackRatingDiffStr);
                
                pstmtGame.setInt(1, 1);
                pstmtGame.setInt(2, 1);
                pstmtGame.setString(3, game.getEvent());
                pstmtGame.setString(4, game.getSite());
                pstmtGame.setString(5, game.getWhitePlayer().toString());
                pstmtGame.setString(6, game.getBlackPlayer().toString());
                pstmtGame.setString(7, game.getResult());
                pstmtGame.setTimestamp(8, timestamp);
                pstmtGame.setInt(9, whiteElo);
                pstmtGame.setInt(10, blackElo);
                pstmtGame.setInt(11, whiteRatingDiff);
                pstmtGame.setInt(12, blackRatingDiff);
                pstmtGame.setString(13, game.getEco());
                pstmtGame.setString(14, game.getOpening());
                pstmtGame.setString(15, game.getTimeControl());
                pstmtGame.setString(16, game.getTermination());
                pstmtGame.setBoolean(17, game.isRated());
                pstmtGame.setInt(18, game.getNbMoves());
                pstmtGame.setString(19, game.getHascode());

                ResultSet res = pstmtGame.executeQuery();
                int gameId = -1;
                if (res.next()) {
                    gameId = res.getInt(1);
                }
                
                // Insertion des mouvements
                if (gameId != -1) {
                    for (int i = 1; i < game.getMoves().size(); i += 2) {
                        String wEvalStr = game.getMoves().get(i - 1).getEval();
                        String wTimestampStr = game.getMoves().get(i - 1).getClock();

                        String wEval = (wEvalStr == null || wEvalStr.equals("") || wEvalStr.isEmpty()) ?  null : wEvalStr;
                        Time wTimestamp = (wTimestampStr == null || wTimestampStr.equals("") || wTimestampStr.isEmpty()) ? null : Time.valueOf(wTimestampStr);

                        if (game.getMoves().get(i) != null) {
                        String bCellStr = game.getMoves().get(i).getDescription();
                        String bEvalStr = game.getMoves().get(i).getEval();
                        String bTimestampStr = game.getMoves().get(i).getClock();

                        String bCell = (bCellStr == null || bCellStr.equals("") || bCellStr.isEmpty()) ? null : bCellStr;
                        String bEval = (bEvalStr == null || bEvalStr.equals("") || bEvalStr.isEmpty()) ? null : bEvalStr;
                        Time bTimestamp = (bTimestampStr == null || bTimestampStr.equals("") || bTimestampStr.isEmpty()) ? null : Time.valueOf(bTimestampStr);

                        // Paramétrage et ajout des mouvements pour les blancs et les noirs
                        pstmtMove.setInt(1, gameId);
                        pstmtMove.setInt(2, (i / 2) + 1);
                        pstmtMove.setString(3, game.getMoves().get(i - 1).getDescription());
                        pstmtMove.setString(4, wEval);
                        pstmtMove.setTime(5, wTimestamp);
                        pstmtMove.setString(6, bCell);
                        pstmtMove.setString(7, bEval);
                        pstmtMove.setTime(8, bTimestamp);
                        pstmtMove.addBatch();
                        } else {
                        // Cas où il n'y a pas de coup noir associé
                        pstmtMove.setInt(1, gameId);
                        pstmtMove.setInt(2, (i / 2) + 1);
                        pstmtMove.setString(3, game.getMoves().get(i - 1).getDescription());
                        pstmtMove.setString(4, wEval);
                        pstmtMove.setTime(5, wTimestamp);
                        pstmtMove.setString(6, null);
                        pstmtMove.setString(7, null);
                        pstmtMove.setTime(8, null);
                        pstmtMove.addBatch();
                        }
                    }
                }
                // Exécution du batch pour insérer les mouvements dans la base de données
                pstmtMove.executeBatch();

                // Validation de la transaction
                conn.commit();
            } catch (SQLException e) {
                // En cas d'erreur, on annule la transaction
                conn.rollback();
                throw e;
            } finally {
                // Restauration du mode par défaut de la connexion
                conn.setAutoCommit(true);
            }
        }
    }
}
