/**
 * @file InitFile.java
 * La classe InitFile est responsable de l'initialisation et du traitement des fichiers PGN dans le cadre
 * de l'importation de données dans une base de données. Elle effectue les opérations suivantes :
 * 
 * - Création et initialisation des tables de la base de données à partir d'un fichier SQL.
 * - Insertion des informations relatives au tournoi et aux joueurs.
 * - Traitement des parties d'échecs depuis un fichier PGN.
 * 
 * Cette classe utilise les services d'autres classes comme `Load`, `Api`, et `PGNParser` pour interagir avec
 * la base de données et pour parser les fichiers PGN.
 *
 * @see lichess.project.parser.PGNParser
 * @see lichess.project.entity.ChessGame
 * @see lichess.project.DAO.ConnectSQL
 * @see lichess.project.load.Load
 * @see lichess.project.API.Api
 */
package lichess.project.initFile;

import java.sql.SQLException;
import java.io.*;
import lichess.project.parser.PGNParser;
import lichess.project.entity.ChessGame;
import lichess.project.DAO.ConnectSQL;
import lichess.project.load.Load;
import lichess.project.API.Api;

public class InitFile {

    /**
     * Cette méthode traite le fichier PGN spécifié, effectue l'initialisation de la base de données, et
     * insère les données nécessaires dans les tables de la base de données.
     * 
     * Le traitement comprend les étapes suivantes :
     * 1. Connexion à la base de données et suppression de toutes les tables existantes.
     * 2. Création des tables en exécutant un fichier SQL d'initialisation.
     * 3. Insertion des données de tournoi (initialisé à "Not_A_Tournament").
     * 4. Parsing des parties d'échecs contenues dans le fichier PGN.
     * 5. Traitement des données des joueurs via l'API.
     * 
     * @param filePath Le chemin du fichier PGN à traiter.
     * @throws SQLException Si une erreur SQL se produit pendant l'interaction avec la base de données.
     * @throws IOException Si une erreur de lecture du fichier PGN survient.
     * @throws InterruptedException Si le processus est interrompu.
     * 
     * @note Vider la base de données ne sera plus nécéssaire une fois les tests terminés.
     */
    public static void processPGNFile(String filePath) throws SQLException, IOException, InterruptedException {
        // Création des instances nécessaires pour interagir avec la base de données et l'API
        Api api = new Api();
        Load load = new Load();
        
        // Suppression de toutes les tables existantes dans la base de données
        load.getDBConnect().dropAllTables(load.getDBConnect().getUrl(), load.getDBConnect().getUser(), load.getDBConnect().getPassword());
        
        // Exécution du script SQL pour créer les tables
        load.getDBConnect().executeSqlFile(load.getDBConnect().getUrl(), load.getDBConnect().getUser(), load.getDBConnect().getPassword(), "src/main/sql/init.sql");
        System.out.println("Tables créées.");
        
        // Insertion du tournois par défaut (pas de tournois)
        load.insertTournament("Not_A_Tournament");
        
        // Création d'une instance de PGNParser pour traiter les parties
        PGNParser parser = new PGNParser(load, filePath, 5, 5000);
        parser.processGames();
        
        // Traitement des données des joueurs via l'API
        api.processPlayerData();
    }
}
