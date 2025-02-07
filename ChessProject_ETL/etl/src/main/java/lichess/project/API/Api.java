/**
 * @file Api.java
 * @brief Cette classe permet de mettre à jour la base de données postgreSQL se notre application à l'aide de l'API de Lichess
 * 
 * Les joueurs enregistrés dans la base de données de notre application manquent de statistiques, c'est pourquoi cette classe permet
 * de récupérer les données des joueurs vie l'API de Lichess et de les insérer dans la base de données.
 */
package lichess.project.API;

import lichess.project.load.Load;

import java.util.Map;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.io.IOException;
import java.sql.*;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Collectors;


/**
 * @class Api
 * @brief L'objet Api est utilisé pour effectuer une mise à jour des données des joueurs dans notre base de données.
 */
public class Api {

    /**
     *  ConnectSQL: permet de se connecter à la BD
     *  API_URL/API_KEY: permet de pouvoir utiliser l'API LiChess
     *  player_list: permet d'avoir la liste des joueurs de notre BD
     */
    private Load load;
    private static final String API_URL = "https://lichess.org/api/users";
    private static final String API_KEY = "lip_PtCIZoPMBlRALpfrYNaM";
    private List<String> player_list = new ArrayList<>();

    /**
     * @brief Constructeur de la classe
     */
    public Api() {
        this.load = new Load();
    }

    /**
     * Méthode qui permet de faire le call à l'API de LiChess, en séparant les joueurs par paquet de 300
     * Ensuite, il y aura un regex qui sépare chaque réponse de l'api afin de rentrer toutes les statistiques
     * nécessaires à la table PLAYER
     * @param playerNames : Liste de joueurs que l'on va récupérer
     */
      public void initAPI(List<String> playerNames) {

        List<List<String>> batches = new ArrayList<>();

        for (int i = 0; i < playerNames.size(); i += 300) {
            batches.add(playerNames.subList(i, Math.min(i + 300, playerNames.size())));
        }

        //On récupère la liste des joueurs dans la BD afin de créer un gros STRING pour l'URL de l'API
        for (List<String> batch : batches) {
            String playersQuery = String.join(",", batch);

            try {
                HttpClient client = HttpClient.newHttpClient();
                HttpRequest request = HttpRequest.newBuilder()
                        .uri(URI.create(API_URL))
                        .header("Authorization", "Bearer " + API_KEY)
                        .header("Content-Type", "application/json")
                        .POST(HttpRequest.BodyPublishers.ofString(playersQuery))
                        .build();

                HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());


                // Je vous présente le REGEX MAGIQUE, ça fonctionne normalement (normalement)
                //!\\ LE SEUL CAS OU CELA NE FONCTIONNE PAS
                //     -----------------------------------
                //      SI le joueur récupèrer dans l'API = DISABLED:TRUE
                //      ALORS cela échange les stats avec le joueur suivant
                //
                // ex:   response.body() = "{{"id":"xrat","username":
                //                          "XRat","disabled":true},{"id":"ciccio","username":"ciccio","perfs":{"bullet":{"games" [...]}
                //
                //      Le résultat est le suivant:
                //          Stat de xrat = bullet: 123, rating: 1500
                //          Stat de ciccio = null
                //
                //      SOLUTION:  On supprime les parties dans le .pgn où ce genre de joueurs apparaissent
                //
                String regex_player = "\"username\":\"(.*?)\""+
                        "(.*?\"bullet\":\\{\"games\":(\\d+),\"rating\":(\\d+)[^}]*})?"+
                        "(.*?\"blitz\":\\{\"games\":(\\d+),\"rating\":(\\d+)[^}]*})?"+
                        "(.*?\"rapid\":\\{\"games\":(\\d+),\"rating\":(\\d+)[^}]*})?"+
                        "(.*?\"classical\":\\{\"games\":(\\d+),\"rating\":(\\d+)[^}]*})?"+
                        "(.*?,\"createdAt\":(\\d+),)?" +
                        "(,\"title\":([A-Z]+))?" +
                        /*"(,\"playTime\":(\\d+))?"+*/
                        "(,\"disabled\":true)?";

                Pattern patternPlayer = Pattern.compile(regex_player);
                Matcher matcherPlayer = patternPlayer.matcher(response.body());

                //debug
                //System.out.println(response.body());

                //Le Map contient toutes les stats de chaque joeuur
                Map<String, Map<String, String>> userStats = new HashMap<>();

                while (matcherPlayer.find()) {
                    String username = matcherPlayer.group(1);
                    String disabledStatus = matcherPlayer.group(18);

                    Map<String, String> stats = new HashMap<>();
                    if (disabledStatus != null) {
                        // Si le joueur est désactivé, définir les valeurs à "N/A"
                        stats.put("bulletGames", "0");
                        stats.put("bulletRating", "N/A");
                        stats.put("blitzGames", "0");
                        stats.put("blitzRating", "N/A");
                        stats.put("rapidGames", "0");
                        stats.put("rapidRating", "N/A");
                        stats.put("classicalGames", "0");
                        stats.put("classicalRating", "N/A");
                        stats.put("date", "0");
                        stats.put("title", null);
                    } else {

                        // Si le joueur n'est pas désactivé, extraire les informations des statistiques de jeu
                        int gamesBullet = matcherPlayer.group(3) != null ? Integer.parseInt(matcherPlayer.group(3)) : 0;
                        String bulletRating = matcherPlayer.group(4) != null ? matcherPlayer.group(4) : "0";
                        int gamesBlitz = matcherPlayer.group(6) != null ? Integer.parseInt(matcherPlayer.group(6)) : 0;
                        String blitzRating = matcherPlayer.group(7) != null ? matcherPlayer.group(7) : "0";
                        int gamesRapid = matcherPlayer.group(9) != null ? Integer.parseInt(matcherPlayer.group(9)) : 0;
                        String rapidRating = matcherPlayer.group(10) != null ? matcherPlayer.group(10) : "0";
                        int gamesClassic = matcherPlayer.group(12) != null ? Integer.parseInt(matcherPlayer.group(12)) : 0;
                        String classicRating = matcherPlayer.group(13) != null ? matcherPlayer.group(13) : "0";
                        String datet = matcherPlayer.group(15) != null ? matcherPlayer.group(15) : null;
                        String title = matcherPlayer.group(17) != null ? matcherPlayer.group(17) : null ;
                        int totalGames = gamesBullet + gamesBlitz + gamesRapid + gamesClassic;
                        double[] res = getRatio(username);
                        String opening = getOpen(username);
                        double nbmoves = getNbMovesWin(username);

                        stats.put("bulletGames", String.valueOf(gamesBullet));
                        stats.put("bulletRating", bulletRating);
                        stats.put("blitzGames", String.valueOf(gamesBlitz));
                        stats.put("blitzRating", blitzRating);
                        stats.put("rapidGames", String.valueOf(gamesRapid));
                        stats.put("rapidRating", rapidRating);
                        stats.put("classicalGames", String.valueOf(gamesClassic));
                        stats.put("classicalRating", classicRating);
                        stats.put("totalGames", String.valueOf(totalGames));
                        stats.put("date", String.valueOf(datet));
                        stats.put("title", title);
                        stats.put("ratio", String.valueOf(res[5]));
                        stats.put("ratioW", String.valueOf(res[3]));
                        stats.put("ratioB", String.valueOf(res[4]));
                        stats.put("opening", opening);
                        stats.put("nbmoves", String.valueOf(nbmoves));

                    }

                    userStats.put(username, stats);
                }

                for (String playerName : player_list) {
                    Map<String, String> stats = userStats.getOrDefault(playerName, null);
                    if (stats != null) {
                        load.insertStatsGame(playerName, stats.getOrDefault("classicalRating", "0"), stats.getOrDefault("blitzRating", "0"), stats.getOrDefault("rapidRating", "0"), stats.getOrDefault("bulletRating", "0"), stats.getOrDefault("totalGames", "0"), stats.getOrDefault("date", null), stats.getOrDefault("title", null), stats.getOrDefault("ratio", "0.0"), stats.getOrDefault("ratioW", "0.0"), stats.getOrDefault("ratioB", "0.0"), stats.getOrDefault("opening", ""), stats.getOrDefault("nbmoves", null));
                    } else {
                        System.out.println("No data available for player: " + playerName);
                    }
                }

                if (response.statusCode() != 200) {
                    System.out.println("Failed to retrieve user info for batch.");
                    System.out.println("Status Code: " + response.statusCode() + " - " + response.body());
                }
            } catch (IOException | InterruptedException e) {
                e.printStackTrace();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            } finally {
                player_list.clear();
            }

        }
    }

    /**
     * @brief Calcule le nombre moyen de coups nécessaires pour que le joueur gagne.
     *
     * @param player Nom du joueur
     * @return Moyenne des coups nécessaires pour gagner, ou -1 si aucune victoire trouvée.
     */
    public double getNbMovesWin(String player) {
        String query = """
        SELECT AVG(nb_moves) AS avg_moves
        FROM public.game
        WHERE 
            (white_name = ? AND result LIKE '1-0%') OR
            (black_name = ? AND result LIKE '0-1%');
    """;

        try (Connection connection = load.getDBConnect().connect();
             PreparedStatement stmt = connection.prepareStatement(query)) {

            stmt.setString(1, player);
            stmt.setString(2, player);

            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return rs.getDouble("avg_moves");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return -1;
    }


    /**
     * @brief Retourne le meilleur opening d'un joueur basé sur ses victoires.
     *
     * @param name Nom du joueur
     * @return Le meilleur opening ou null si aucun résultat
     */
    public String getOpen(String name) {
        String bestOpening = null;
        String query = """
        SELECT g.opening, COUNT(*) AS win_count
        FROM public.game g
        WHERE 
            (g.white_name = ? AND g.result LIKE '1-0%') OR
            (g.black_name = ? AND g.result LIKE '0-1%')
        GROUP BY g.opening
        ORDER BY win_count DESC
        LIMIT 1;
        """;

        try (Connection connection = load.getDBConnect().connect();
             PreparedStatement stmt = connection.prepareStatement(query)) {

            stmt.setString(1, name);
            stmt.setString(2, name);

            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    bestOpening = rs.getString("opening");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return bestOpening;
    }



    /**
     * @brief Cette fonction permet de ressortir dans un tableau le nombre de victoire et le ratio de chaque joueur
     * Elle parcourt chaque game de notre table et regarde si le joueur qui a gagné = name
     *
     * @param name : prend un name afin de chercher un utilisateur et son historique de parties.
     * @return tableau de ratio des personnes
     */
    public double[] getRatio(String name) {

        // 0: victoires blanc, 1: victoires noir, 2: total victoires, 3: ratio blanc, 4: ratio noir, 5: ratio total
        double[] result = new double[6];

        int whiteGames = 0;
        int blackGames = 0;
        int totalGames = 0;
        int totalWins = 0;

        try (Connection connection = load.getDBConnect().connect()) {
            String query = "SELECT white_name, black_name, result FROM game " +
                           "WHERE white_name = ? OR black_name = ?";
            try (PreparedStatement stmt = connection.prepareStatement(query)) {
                stmt.setString(1, name);
                stmt.setString(2, name);

                try (ResultSet rs = stmt.executeQuery()) {
                    while (rs.next()) {
                        String whitePlayer = rs.getString("white_name").trim();
                        String blackPlayer = rs.getString("black_name").trim();
                        String score = rs.getString("result").trim();

                        // Gestion des scores ("1/2-1/2")
                        if (score.equals("1/2-1/2")) {
                            totalGames++;  // Partie comptée mais pas comme victoire
                            if (whitePlayer.equals(name)) whiteGames++;
                            if (blackPlayer.equals(name)) blackGames++;
                            continue;
                        }


                        String[] scoreParts = score.split("-");
                        if (scoreParts.length != 2) {
                            continue;
                        }

                        try {
                            int whiteScore = Integer.parseInt(scoreParts[0].trim());
                            int blackScore = Integer.parseInt(scoreParts[1].trim());

                            if (whitePlayer.equals(name)) {
                                whiteGames++;
                                totalGames++;
                                if (whiteScore > blackScore) {
                                    result[0]++;
                                    totalWins++;
                                }
                            } else if (blackPlayer.equals(name)) {
                                blackGames++;
                                totalGames++;
                                if (blackScore > whiteScore) {
                                    result[1]++;
                                    totalWins++;
                                }
                            }
                        } catch (NumberFormatException e) {
                            System.err.println("Erreur lors de la conversion du score : " + score);
                        }
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        result[2] = totalWins;
        result[3] = whiteGames > 0 ? result[0] / whiteGames : 0;  // Ratio blanc
        result[4] = blackGames > 0 ? result[1] / blackGames : 0;  // Ratio noir
        result[5] = totalGames > 0 ? totalWins / (double) totalGames : 0;  // Ratio total

        return result;
    }





    /**
     * @brief Permet de récuperer 300 joueurs de notre BD
     */
     public void processPlayerData() {
        try {
            // Etape 1: Nombre total de joueur de notre BD
            String countQuery = "SELECT COUNT(*) AS total FROM Player";
            String selectQuery = "SELECT name FROM Player LIMIT 300 OFFSET ?";

            try (Connection conn = load.getDBConnect().connect();
                 Statement countStmt = conn.createStatement();
                 PreparedStatement selectStmt = conn.prepareStatement(selectQuery)) {
                 ResultSet countResult = countStmt.executeQuery(countQuery);
                 int totalPlayers = 0;
                 if (countResult.next()) {
                    totalPlayers = countResult.getInt("total");
                 }
                 //System.out.println("Total players: " + totalPlayers);

                 int offset = 0;
                 while (offset < totalPlayers) {
                    selectStmt.setInt(1, offset);
                    ResultSet playerResults = selectStmt.executeQuery();

                    while (playerResults.next()) {
                        String playerName = playerResults.getString("name");
                        //System.out.println(" - " + playerName);
                        player_list.add(playerName);
                    }
                    initAPI(player_list);
                    offset += 300;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /**
     * @brief Permet une mise à jour automatique des joueurs de la BD tous les mois
     */
    public void scheduleTask() {
        ScheduledExecutorService scheduler = Executors.newScheduledThreadPool(1);
        Runnable apiTask = () -> {
            System.out.println("Executing task at: " + new java.util.Date());
        };
        long oneMonthInMillis = TimeUnit.DAYS.toMillis(30);
        scheduler.scheduleAtFixedRate(apiTask, 0, oneMonthInMillis, TimeUnit.MILLISECONDS);
    }
}
