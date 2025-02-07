/**
 * @file ETL.java
 * @brief La classe ETL est responsable de l'exécution du processus d'extraction, transformation et chargement
 * (ETL) des données depuis un fichier PGN. Elle prend en entrée le nom d'un fichier PGN et utilise la classe
 * `InitFile` pour traiter ce fichier et en extraire les données nécessaires.
 *
 * La classe fonctionne en ligne de commande et attend que l'utilisateur spécifie le nom d'un fichier PGN situé
 * dans le répertoire `src/external-resources/`. Si ce fichier est trouvé, il est traité, sinon un message d'erreur
 * est affiché.
 * 
 * @see InitFile
 */
package lichess.project;

import lichess.project.initFile.InitFile;

/**
 * @class ETL
 * @brief Classe permettant le lancement de l'ETL en renseignant le nom du fichier .pgn à traiter
 */
public class ETL {
    /**
     * Le point d'entrée principal du programme. Il attend un argument de ligne de commande représentant le nom
     * du fichier PGN à traiter.
     *
     * @param args Les arguments de ligne de commande, où le premier argument est le nom du fichier PGN à traiter.
     */
    public static void main(String[] args) {
        // Vérifie si le nom du fichier a été passé en argument
        if(args.length < 1) {
            System.out.println("Specify filename (located in src/external-resources).");
            System.exit(1);
        }

        // Définit le préfixe du chemin d'accès aux fichiers externes
        final String PATH_PREFIX = "src/external-resources/";

        // Récupère le nom du fichier PGN à traiter
        final String file = args[0];
        try {
            // Traite le fichier PGN spécifié en appelant la méthode de la classe InitFile
            InitFile.processPGNFile(PATH_PREFIX + file);
        } catch(Exception ex) {
            // Si une exception est lancée pendant le traitement, affiche un message d'erreur
            System.err.println(ex.getMessage());
        }
    }
}
