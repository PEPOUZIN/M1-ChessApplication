/**
 * @file PGNLichess.java
 * @brief Classe abstraite contenant des constantes et des modèles pour parser les fichiers PGN des parties d'échecs.
 *
 * Cette classe définit les constantes utilisées pour analyser les fichiers PGN (Portable Game Notation) des parties d'échecs. 
 * Elle inclut des étiquettes (tags), des caractères spéciaux, ainsi que des expressions régulières nécessaires au parsing des métadonnées et des mouvements de jeu.
 */

package lichess.project.parser;

/**
 * @class PGNLichess
 * @brief Classe abstraite pour parser les données PGN d'une partie d'échecs.
 *
 * Cette classe définit des constantes représentant les différentes étiquettes (tags) et les modèles utilisés pour extraire les informations des fichiers PGN, 
 * telles que les informations sur l'événement, le site, les joueurs, les résultats, les évaluations Elo, les dates, l'ouverture, etc. 
 * Elle inclut également des expressions régulières pour parser les mouvements de jeu et les commentaires associés.
 */
public abstract class PGNLichess {

        /**
         * @brief Étiquettes (tags) pour les métadonnées d'une partie d'échecs.
         * Ces étiquettes sont utilisées pour extraire les informations dans le fichier PGN.
         */
        public static final String
                TAG_EVENT    = "Event",    ///< L'événement où se déroule la partie (Tournois de ... , Partie classée, etc. ).
                TAG_SITE     = "Site",     ///< Le site où se déroule la partie (lieu, URL, etc. ).
                TAG_ROUND    = "Round",    ///< Le numéro du round de la partie.
                TAG_WHITE    = "White",    ///< Le joueur blanc.
                TAG_BLACK    = "Black",    ///< Le joueur noir.
                TAG_RESULT   = "Result",   ///< Le résultat de la partie.
                TAG_UTCDATE  = "UTCDate",  ///< La date de la partie en format UTC.
                TAG_UTCTIME  = "UTCTime",  ///< L'heure de la partie en format UTC.
                TAG_WELO     = "WhiteElo", ///< Le classement Elo du joueur blanc.
                TAG_BELO     = "BlackElo", ///< Le classement Elo du joueur noir.
                TAG_WRTD     = "WhiteRatingDiff", ///< La différence de classement Elo pour le joueur blanc.
                TAG_BRTD     = "BlackRatingDiff", ///< La différence de classement Elo pour le joueur noir.
                TAG_WTITLE   = "WhiteTitle", ///< Le titre du joueur blanc.
                TAG_ECO      = "ECO",       ///< Le code ECO de l'ouverture utilisée.
                TAG_OPENING  = "Opening",   ///< Le nom de l'ouverture utilisée.
                TAG_TIMECTL  = "TimeControl", ///< La durée totale d'une partie plus la prolongation.
                TAG_TERM     = "Termination"; ///< La manière dont la partie s'est terminée.
    
        /**
         * @brief Caractères spéciaux utilisés dans la notation PGN.
         */
        public static final char
                TOK_TAG_OPEN = '[',    ///< Caractère d'ouverture d'un tag.
                TOK_TAG_CLOSE = ']',   ///< Caractère de fermeture d'un tag.
                TOK_QUOTE = '"',       ///< Caractère de citation.
                TOK_DASH = '-',        ///< Caractère de tiret.
                TOK_DOT = '.',         ///< Caractère de point.
                TOK_COLON = ':',       ///< Caractère de deux-points.
                TOK_QMARK = '?',       ///< Caractère de point d'interrogation.
                TOK_STAR = '*',        ///< Caractère d'astérisque.
                TOK_PLUS = '+',        ///< Caractère de plus.
                TOK_MINUS = '-',       ///< Caractère de moins.
                TOK_SPACE = ' ',       ///< Caractère d'espace.
                TOK_MAT = '#',         ///< Caractère représentant un échec et mat.
                TOK_EMARK = '!';       ///< Caractère représentant un commentaire fort.
    
        /**
         * @brief Groupe de parsing utilisé pour les tags dans les expressions régulières.
         */
        public static final int TAG_PARSE_GROUP = 1;
    
        /**
         * @brief Modèles pour extraire les informations spécifiques des métadonnées dans un fichier PGN.
         */
        public static final String
                BEGIN = "\\"+TOK_TAG_OPEN, ///< Début d'un tag PGN.
                SEPARATOR = TOK_SPACE+"\\"+TOK_QUOTE, ///< Séparateur pour les valeurs de chaîne de caractères.
                STR_VAL = SEPARATOR+"(.*?)", ///< Modèle pour une valeur de chaîne de caractères.
                RES_VAL = SEPARATOR+"(((0|1|(1/2))"+TOK_DASH+"(0|1|(1/2)))|\\"+TOK_STAR+")", ///< Modèle pour le résultat de la partie.
                ELO_VAL = SEPARATOR+"(\\d{1,4})", ///< Modèle pour les valeurs Elo.
                RTD_VAL = SEPARATOR+"(["+TOK_PLUS+TOK_MINUS+"]\\d{1,3})", ///< Modèle pour la différence de classement Elo.
                ECO_VAL = SEPARATOR+"([A-E]\\d{2})", ///< Modèle pour le code ECO de l'ouverture.
                DATE_VAL = SEPARATOR
                        +"((\\d{4}|\\"+TOK_QMARK+"{4})"
                        +TOK_DOT+"(\\d{2}|\\"+TOK_QMARK+"{2})"
                        +TOK_DOT+"(\\d{2}|\\"+TOK_QMARK+"{2}))", ///< Modèle pour la date.
                TIME_VAL = SEPARATOR
                        +"((\\d{2}|\\"+TOK_QMARK+"{2})"
                        +TOK_COLON+"(\\d{2}|\\"+TOK_QMARK+"{2})"
                        +TOK_COLON+"(\\d{2}|\\"+TOK_QMARK+"{2}))", ///< Modèle pour l'heure.
                TIMECTL_VAL = SEPARATOR+"(\\d+"+TOK_PLUS+"\\d+)", ///< Modèle pour le contrôle de temps.
                END = "\\"+TOK_QUOTE+"\\"+TOK_TAG_CLOSE, ///< Fin d'un tag PGN.
    
        /**
         * @brief Modèles pour extraire les valeurs des tags spécifiques dans un fichier PGN.
         */
        PTRN_EVENT   = BEGIN + TAG_EVENT     + STR_VAL       + END, ///< Modèle pour l'événement.
        PTRN_SITE    = BEGIN + TAG_SITE      + STR_VAL       + END, ///< Modèle pour le site.
        PTRN_WHITE   = BEGIN + TAG_WHITE     + STR_VAL       + END, ///< Modèle pour le joueur blanc.
        PTRN_BLACK   = BEGIN + TAG_BLACK     + STR_VAL       + END, ///< Modèle pour le joueur noir.
        PTRN_RESULT  = BEGIN + TAG_RESULT    + STR_VAL       + END, ///< Modèle pour le résultat.
        PTRN_WELO    = BEGIN + TAG_WELO      + ELO_VAL       + END, ///< Modèle pour le classement Elo du joueur blanc.
        PTRN_BELO    = BEGIN + TAG_BELO      + ELO_VAL       + END, ///< Modèle pour le classement Elo du joueur noir.
        PTRN_WRTD    = BEGIN + TAG_WRTD      + RTD_VAL       + END, ///< Modèle pour la différence de classement Elo du joueur blanc.
        PTRN_BRTD    = BEGIN + TAG_BRTD      + RTD_VAL       + END, ///< Modèle pour la différence de classement Elo du joueur noir.
        PTRN_ECO     = BEGIN + TAG_ECO       + ECO_VAL       + END, ///< Modèle pour le code ECO de l'ouverture.
        PTRN_OPENING = BEGIN + TAG_OPENING   + STR_VAL       + END, ///< Modèle pour le nom de l'ouverture.
        PTRN_TIMECTL = BEGIN + TAG_TIMECTL   + TIMECTL_VAL   + END, ///< Modèle pour le contrôle de temps.
        PTRN_TERM    = BEGIN + TAG_TERM      + STR_VAL       + END, ///< Modèle pour la terminaison.
        PTRN_DATE    = BEGIN + TAG_UTCDATE   + DATE_VAL      + END, ///< Modèle pour la date.
        PTRN_TIME    = BEGIN + TAG_UTCTIME   + TIME_VAL      + END, ///< Modèle pour l'heure.
        PTRN_MOVE    = "(("  + TOK_SPACE+"?" + SAN.PTRN_CMT_MOVE + ")+)", ///< Modèle pour un mouvement avec un commentaire.
    
        /**
         * @brief Modèle global pour extraire les informations complètes d'une partie d'échecs dans un fichier PGN.
         */
        PTRN_GAME = PTRN_EVENT+"\n"+"(\\"+TOK_TAG_OPEN+".*\\s\".*\"\\"+TOK_TAG_CLOSE+"\n)+"+PTRN_TERM+"\n\n"
                +"(\\s?\\d+\\..*)*"
                +"\\s(((0|1|(1/2))"+TOK_DASH+"(0|1|(1/2)))|\\"+TOK_STAR+")";
    }