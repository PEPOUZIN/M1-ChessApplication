/**
 * @file PGNParser.java
 * @brief Cette classe permet de parser des fichiers PGN contenant des parties d'échecs, en utilisant un traitement multi-thread pour optimiser les performances lors du traitement de grandes quantités de données.
 * 
 * La classe lit un fichier PGN, extrait les informations des parties, et les insère dans une base de données via un objet {@link Load}.
 * Elle utilise un pool de threads pour effectuer ce traitement de manière asynchrone.
 */

package lichess.project.parser;

import java.io.BufferedReader;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.concurrent.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import lichess.project.entity.ChessGame;
import lichess.project.load.Load;

/**
 * @class PGNParser
 * @brief Classe permettant de parser des fichiers PGN contenant des parties d'échecs et d'en extraire les données nécessaires.
 * 
 * Cette classe implémente le traitement asynchrone des parties à l'aide de threads. Elle est capable de lire un fichier PGN, d'extraire les informations liées aux parties (joueurs, résultats, etc.), et d'envoyer ces données dans une base via un objet {@link Load}.
 */
public class PGNParser extends lichess.project.parser.PGNLichess {
    
    /** 
     *  @brief Queue de chaînes contenant les jeux extraits du fichier PGN.
     */
    private final BlockingQueue<String> rawGames;
    
    /** 
     *  @brief Chemin du fichier PGN à parser.
     */
    private final Path file;
    
    /** 
     *  @brief Exécuteur de pool de threads pour le traitement parallèle des jeux.
     */
    private final ThreadPoolExecutor executor;
    
    /** 
     *  @brief Objet responsable de l'insertion des données dans la base.
     */
    private final Load load;

    /**
     * @brief Constructeur du parser PGN.
     * 
     * Initialise le parser PGN avec un chemin de fichier, le nombre de threads à utiliser pour le traitement et la capacité de la queue.
     * 
     * @param load L'objet de chargement pour l'insertion des données dans la base.
     * @param path Le chemin du fichier PGN à analyser.
     * @param nbThread Le nombre de threads à utiliser pour traiter les jeux.
     * @param queueCapacity La capacité de la queue de jeux.
     */
    public PGNParser(Load load, String path, int nbThread, int queueCapacity) {
        this.load = load;
        this.rawGames = new ArrayBlockingQueue<>(queueCapacity);
        this.file = Paths.get(path);
        this.executor = (ThreadPoolExecutor) Executors.newFixedThreadPool(nbThread);
    }

    /**
     * @brief Récupère la valeur d'un tag spécifique dans une chaîne donnée.
     * 
     * Cette méthode utilise une expression régulière pour extraire la valeur d'un tag dans une chaîne de texte représentant une partie.
     * 
     * @param data La chaîne contenant les données de la partie.
     * @param pattern Le motif d'expression régulière pour trouver le tag.
     * @return La valeur du tag sous forme de chaîne.
     */
    public String retrieveTag(String data, String pattern) {
        String tagValue = "";
        Pattern tagPattern = Pattern.compile(pattern);
        Matcher matcher = tagPattern.matcher(data);
        if(matcher.find()) {
            tagValue = matcher.group(TAG_PARSE_GROUP);
        }
        return tagValue;
    }

    /**
     * @brief Parse une partie d'échecs à partir d'une chaîne brute de données.
     * 
     * Cette méthode extrait les informations essentielles d'une partie (événement, joueurs, résultat, etc.) et les convertit en un objet {@link ChessGame}.
     * 
     * @param currentGame La chaîne représentant une partie à analyser.
     * @return Un objet {@link ChessGame} représentant la partie analysée.
     */
    public ChessGame parseSingleGame(String currentGame) {
        ChessGame game = new ChessGame();
        game.setEvent(this.retrieveTag(currentGame, PTRN_EVENT));
        game.setSite(this.retrieveTag(currentGame, PTRN_SITE));
        game.getWhitePlayer().setName(this.retrieveTag(currentGame, PTRN_WHITE));
        game.getBlackPlayer().setName(this.retrieveTag(currentGame, PTRN_BLACK));
        game.setResult(this.retrieveTag(currentGame, PTRN_RESULT));
        game.setDate(this.retrieveTag(currentGame, PTRN_DATE));
        game.setTime(this.retrieveTag(currentGame, PTRN_TIME));
        game.getWhitePlayer().setElo(this.retrieveTag(currentGame, PTRN_WELO));
        game.getBlackPlayer().setElo(this.retrieveTag(currentGame, PTRN_BELO));
        game.setWhiteRatingDiff(this.retrieveTag(currentGame, PTRN_WRTD));
        game.setBlackRatingDiff(this.retrieveTag(currentGame, PTRN_BRTD));
        game.setEco(this.retrieveTag(currentGame, PTRN_ECO));
        game.setOpening(this.retrieveTag(currentGame, PTRN_OPENING));
        game.setTimeControl(this.retrieveTag(currentGame, PTRN_TIMECTL));
        game.setTermination(this.retrieveTag(currentGame, PTRN_TERM));
        game.setMoves(SANParser.stringToList(currentGame));
        return game;
    }

    /**
     * @brief Lit le fichier PGN et met les jeux extraits dans la queue pour traitement.
     * 
     * Cette méthode lit chaque ligne du fichier PGN, assemble les parties et les met dans la queue {@link rawGames} pour traitement ultérieur.
     * 
     * @throws IOException Si une erreur de lecture du fichier se produit.
     * @throws InterruptedException Si le thread de lecture est interrompu.
     */
    public void fileReaderThread() throws IOException, InterruptedException {
        final Pattern pattern = Pattern.compile(PTRN_GAME);
        BufferedReader reader = Files.newBufferedReader(this.file);
        String line;
        StringBuilder gameBuilder = new StringBuilder();

        try {
            while ((line = reader.readLine()) != null) {
                gameBuilder.append(line).append("\n");
                Matcher matcher = pattern.matcher(gameBuilder);
                if (matcher.find()) {
                    rawGames.put(gameBuilder.toString()); // Bloque si la queue est pleine
                    gameBuilder.setLength(0);
                }
            }
            // Ajouter la dernière partie si elle n'a pas été traitée
            if (gameBuilder.length() > 0) {
                rawGames.put(gameBuilder.toString());
            }
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw new IOException("Lecture du fichier interrompue.", e);
        } finally {
            reader.close();
            rawGames.put("EOF"); // Marqueur de fin
        }
    }

    /**
     * @brief Traite les jeux extraits de la queue et les insère dans la base.
     * 
     * Cette méthode prend chaque jeu de la queue, l'analyse et l'insère dans la base de données via l'objet {@link Load}.
     */
    public void gameProcessorThread() {
        try {
            while (true) {
                String rawGame = rawGames.take(); // Bloque si la queue est vide
                if ("EOF".equals(rawGame)) {
                    rawGames.put("EOF"); // Passe le marqueur pour les autres threads
                    break;
                }
                ChessGame game = parseSingleGame(rawGame);
                load.batchInsert(game);
            }
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        } catch (Exception e) {
            System.err.println("Erreur lors du traitement d'une partie : " + e.getMessage());
            e.printStackTrace();
        }
    }

    /**
     * @brief Démarre le traitement des jeux du fichier PGN.
     * 
     * Cette méthode lance un thread pour lire le fichier et plusieurs threads pour traiter les jeux en parallèle.
     * Elle attend également la fin du traitement de tous les jeux.
     * 
     * @throws IOException Si une erreur de lecture du fichier se produit.
     * @throws InterruptedException Si un des threads est interrompu.
     */
    public void processGames() throws IOException, InterruptedException {
        // Lancer le thread de lecture
        Thread readerThread = new Thread(() -> {
            try {
                fileReaderThread();
            } catch (IOException e) {
                System.err.println("Erreur dans la lecture du fichier : " + e.getMessage());
                e.printStackTrace();
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            }
        });
        readerThread.start();

        // Lancer les threads de traitement
        for (int i = 0; i < executor.getMaximumPoolSize(); i++) {
            executor.submit(this::gameProcessorThread);
        }

        // Attendre la fin du thread de lecture
        readerThread.join();

        // Arrêter le pool de threads
        executor.shutdown();
        executor.awaitTermination(1, TimeUnit.HOURS); // Attendre la fin des tâches
    }

}
