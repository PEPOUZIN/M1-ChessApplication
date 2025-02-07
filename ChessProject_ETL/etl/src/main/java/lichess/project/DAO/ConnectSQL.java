/**
 * @file ConnectSQL.java
 * @brief Classe utilitaire pour gérer la connexion à une base de données PostgreSQL et exécuter des opérations SQL.
 *
 * Cette classe fournit des fonctionnalités pour établir une connexion à une base de données PostgreSQL,
 * exécuter des fichiers SQL, et effectuer des opérations telles que la suppression de toutes les tables 
 * de la base de données. Elle inclut des méthodes pour se connecter à la base de données en utilisant 
 * des identifiants fournis, et pour interagir avec la base de données via des requêtes SQL.
 *
 * @note L'URL de la base de données, le nom d'utilisateur et le mot de passe sont actuellement codés en dur 
 * dans le code, bien que la possibilité de les récupérer à partir des variables d'environnement soit envisagée.
 */

package lichess.project.DAO;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * @class ConnectSQL
 * @brief Classe permettant de gérer la connexion à une base de données PostgreSQL et d'exécuter des opérations SQL.
 * 
 * La classe ConnectSQL fournit des méthodes pour se connecter à une base de données PostgreSQL,
 * exécuter des scripts SQL à partir de fichiers et supprimer toutes les tables de la base de données.
 */
public class ConnectSQL {

    private String url; /**< URL de la base de données PostgreSQL */
    private String user; /**< Nom d'utilisateur pour la connexion à la base de données */
    private String password; /**< Mot de passe pour la connexion à la base de données */

    /**
     * @brief Constructeur de la classe ConnectSQL.
     * 
     * Ce constructeur initialise les informations de connexion à la base de données PostgreSQL.
     * Les valeurs utilisées sont codées en dur (URL, utilisateur et mot de passe).
     */
    public ConnectSQL() {
        /*//Ne fonctionne pas, url null
        this.url = System.getenv("DATABASE_URL");
        this.user = System.getenv("DATABASE_USER");
        this.password = System.getenv("DATABASE_PASSWORD");
        */

        this.url = "jdbc:postgresql://postgres:5432/chess"; // URL de la base de données
        this.user = "will"; // Nom d'utilisateur PostgreSQL
        this.password = "secret"; // Mot de passe PostgreSQL
    }

    /**
     * @brief Établit une connexion à la base de données PostgreSQL.
     * 
     * Cette méthode crée une connexion à la base de données en utilisant les informations de connexion
     * définies dans la classe.
     * 
     * @return Une connexion à la base de données PostgreSQL.
     * @throws SQLException Si une erreur se produit lors de la connexion à la base de données.
     */
    public Connection connect() throws SQLException {
        return DriverManager.getConnection(url, user, password);
    }

    /**
     * @brief Supprime toutes les tables de la base de données PostgreSQL.
     * 
     * Cette méthode exécute une requête SQL pour supprimer toutes les tables de la base de données.
     * Elle se connecte à la base de données, récupère les noms des tables et les supprime en cascade.
     * 
     * @param url L'URL de la base de données.
     * @param user Le nom d'utilisateur pour la connexion.
     * @param password Le mot de passe pour la connexion.
     */
    public static void dropAllTables(String url, String user, String password) {
        String dropTableSql = "DO $$ DECLARE r RECORD; BEGIN " +
                "FOR r IN (SELECT tablename FROM pg_tables WHERE schemaname = 'public') LOOP " +
                "EXECUTE 'DROP TABLE IF EXISTS ' || quote_ident(r.tablename) || ' CASCADE'; " +
                "END LOOP; END $$;";

        try (Connection conn = DriverManager.getConnection(url, user, password);
             Statement stmt = conn.createStatement()) {

            stmt.execute(dropTableSql);
            System.out.println("Toutes les tables ont été supprimées avec succès.");

        } catch (SQLException e) {
            System.err.println("Erreur lors de la suppression des tables: " + e.getMessage());
        }
    }

    /**
     * @brief Exécute un fichier SQL sur la base de données PostgreSQL.
     * 
     * Cette méthode lit un fichier SQL et exécute les instructions qu'il contient sur la base de données.
     * 
     * @param url L'URL de la base de données.
     * @param user Le nom d'utilisateur pour la connexion.
     * @param password Le mot de passe pour la connexion.
     * @param filePath Le chemin du fichier SQL à exécuter.
     */
    public static void executeSqlFile(String url, String user, String password, String filePath) {
        try (Connection conn = DriverManager.getConnection(url, user, password);
            Statement stmt = conn.createStatement();
            BufferedReader br = new BufferedReader(new FileReader(filePath))) {

            StringBuilder sql = new StringBuilder();
            String line;
            while ((line = br.readLine()) != null) {
                sql.append(line).append("\n");
            }

            // Exécuter le script SQL
            stmt.execute(sql.toString());
            System.out.println("Fichier SQL exécuté avec succès : " + filePath);

        } catch (SQLException e) {
            System.err.println("Erreur de connexion à la base de données: " + e.getMessage());
        } catch (IOException e) {
            System.err.println("Erreur de lecture du fichier SQL: " + e.getMessage());
        }
    }

    /**
     * @brief Récupère l'URL de connexion à la base de données.
     * 
     * Cette méthode retourne l'URL de la base de données PostgreSQL.
     * 
     * @return L'URL de la base de données.
     */
    public String getUrl() {
        return url;
    }

    /**
     * @brief Récupère le nom d'utilisateur pour la connexion à la base de données.
     * 
     * Cette méthode retourne le nom d'utilisateur utilisé pour se connecter à la base de données.
     * 
     * @return Le nom d'utilisateur.
     */
    public String getUser() {
        return user;
    }

    /**
     * @brief Récupère le mot de passe utilisé pour la connexion à la base de données.
     * 
     * Cette méthode retourne le mot de passe utilisé pour se connecter à la base de données.
     * 
     * @return Le mot de passe de la base de données.
     */
    public String getPassword() {
        return password;
    }
}
