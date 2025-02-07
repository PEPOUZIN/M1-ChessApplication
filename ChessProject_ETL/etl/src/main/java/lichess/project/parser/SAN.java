/**
 * @file SAN.java
 * @brief Classe abstraite définissant des constantes et des expressions régulières pour le traitement des mouvements en notation SAN (Standard Algebraic Notation).
 *
 * Cette classe contient des constantes et des expressions régulières utilisées pour parser et analyser les mouvements de la notation SAN des parties d'échecs.
 * La notation SAN est utilisée pour représenter les mouvements de manière compacte et standardisée.
 */

package lichess.project.parser;

/**
 * @class SAN
 * @brief Classe abstraite fournissant des constantes pour le traitement des mouvements en notation SAN.
 *
 * Cette classe abstraite définit des constantes de type entier, caractère et chaîne de caractères, qui sont utilisées pour analyser et manipuler les mouvements
 * d'échecs en notation SAN. Les expressions régulières définies dans cette classe sont essentielles pour le parsing des mouvements et des commentaires dans les parties d'échecs.
 */

public abstract class SAN {

        /**
         * @brief Indices utilisés pour identifier les différentes parties d'un mouvement.
         */
        public static final int
                ORDER_INDEX = 0, ///< L'indice du numéro du mouvement.
                BASIC_WINDEX = 1, ///< L'indice du type de pièce (blanc).
                BASIC_BINDEX = 2, ///< L'indice du type de pièce (noir).
                MATCH_GROUP = 0, ///< L'indice du groupe de correspondance dans les expressions régulières.
                CMT_VAL_INDEX = 1; ///< L'indice de la valeur d'un commentaire.
    
        /**
         * @brief Caractères utilisés pour représenter les pièces et les commentaires dans la notation SAN.
         */
        public static final char
                PWN_KING = 'K', ///< Le caractère représentant le roi.
                PWN_QUEEN = 'Q', ///< Le caractère représentant la reine.
                PWN_ROOK = 'R', ///< Le caractère représentant la tour.
                PWN_BISHOP = 'B', ///< Le caractère représentant le fou.
                PWN_KNIGHT = 'N', ///< Le caractère représentant le cavalier.
                
                CMT_MATE = '#', ///< Le caractère représentant un échec et mat.
                CMT_CHECK = '+', ///< Le caractère représentant un échec.
                CMT_PROM = '=', ///< Le caractère représentant une promotion de pion.
                CMT_QMARK = '?', ///< Le caractère représentant un commentaire faible.
                CMT_EMARK = '!', ///< Le caractère représentant un commentaire fort.
                CMT_AMBIG = 'x'; ///< Le caractère représentant une ambiguïté dans le mouvement.
    
        /**
         * @brief Chaînes de caractères représentant les modèles pour les évaluations et les horloges dans les commentaires de la notation SAN.
         */
        public static final String
                CMT_AREA_OPEN = "\\{", ///< Début d'une zone de commentaire.
                CMT_AREA_CLOSE = "}", ///< Fin d'une zone de commentaire.
                CMT_OPEN = "\\[", ///< Début d'un commentaire.
                CMT_CLOSE = "\\]", ///< Fin d'un commentaire.
                SPACE = " ", ///< Représente un espace dans la notation SAN.
    
                EVAL_VAL = CMT_MATE+"?-?\\d+(\\.\\d+)?", ///< Modèle pour l'évaluation d'une position.
                CLOCK_VAL = "\\d{1,2}:\\d{2}:\\d{2}", ///< Modèle pour l'horloge d'un joueur.
                TAG_EVAL = CMT_OPEN+"%eval"+SPACE+EVAL_VAL+CMT_CLOSE+SPACE, ///< Tag d'évaluation dans un commentaire.
                TAG_CLOCK = CMT_OPEN+"%clk"+SPACE+CLOCK_VAL+CMT_CLOSE+SPACE, ///< Tag de l'horloge dans un commentaire.
                PTRN_TAGS = CMT_AREA_OPEN+"("+SPACE+"("+TAG_EVAL+")?"+"("+TAG_CLOCK+")?)"+CMT_AREA_CLOSE; ///< Modèle de tag dans un commentaire SAN.
    
        /**
         * @brief Chaînes de caractères représentant des motifs pour les mouvements de pièces et les spécificités de la notation SAN.
         */
        public static final String
                LTR_RANGE = "[a-h]", ///< Plage de lettres représentant les colonnes (a à h).
                NBR_RANGE = "[1-8]", ///< Plage de chiffres représentant les rangées (1 à 8).
                MOVE_SEP = "\\d+\\.{3}", ///< Séparateur de mouvement.
                KCAST = "O-O", ///< Roque du roi.
                QCAST = "O-O-O", ///< Roque de la dame.
                ORDER = "\\d+\\.", ///< Numéro du mouvement.
                AMBIG_VAL = "("+LTR_RANGE+"|"+NBR_RANGE+"|"+CMT_AMBIG+")", ///< Valeur ambiguë d'une case ou d'une pièce.
                POS = LTR_RANGE+NBR_RANGE, ///< Position d'une pièce (lettre + chiffre).
                PAWNS = "["+PWN_KING+PWN_QUEEN+PWN_BISHOP+PWN_KNIGHT+PWN_ROOK+"]", ///< Modèle pour les pièces (roi, reine, etc.).
                CMT = "[\\"+CMT_QMARK+"\\"+CMT_EMARK+"]{0,2}", ///< Modèle pour les commentaires (forts ou faibles).
                CHECKMATE = "[\\"+CMT_MATE+"\\"+CMT_CHECK+"]", ///< Modèle pour un échec ou un échec et mat.
                SUFFIX = "("+CHECKMATE+")?"+CMT, ///< Suffixe optionnel pour un échec ou un échec et mat.
    
                CAST_MOVE = "("+QCAST+"|"+KCAST+")", ///< Mouvement de roque.
                BASIC_MOVE = PAWNS+"?"+LTR_RANGE+"?"+AMBIG_VAL+"?"+POS, ///< Modèle pour un mouvement de base de pièce.
                PROM_MOVE = "("+BASIC_MOVE+CMT_PROM+PAWNS+")", ///< Modèle pour un mouvement de promotion de pion.
                ANY_MOVE = "("+CAST_MOVE+"|"+PROM_MOVE+"|"+BASIC_MOVE+")"+SUFFIX, ///< Modèle pour n'importe quel mouvement.
    
                PTRN_BASIC_MOVE = ORDER+SPACE+ANY_MOVE+SPACE+ANY_MOVE, ///< Modèle pour un mouvement de base.
                PTRN_CMT_MOVE = ORDER+SPACE
                        +"("+ANY_MOVE+SPACE+"("+PTRN_TAGS+")?)"
                        +"("+SPACE+MOVE_SEP+SPACE+")?"
                        +"("+ANY_MOVE+SPACE+"("+PTRN_TAGS+")?)?"; ///< Modèle pour un mouvement avec commentaire.
    }