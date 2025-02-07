/**
 * @file SANParser.java
 * @brief Cette classe permet de parser les mouvements d'une partie d'échecs à partir d'une chaîne de caractères, en utilisant la notation SAN (Standard Algebraic Notation).
 * 
 * La classe inclut des méthodes pour analyser des mouvements basiques et des mouvements commentés avec des évaluations et des horloges.
 */

 package lichess.project.parser;

 import java.util.List;
 import java.util.regex.Pattern;
 import java.util.regex.Matcher;
 import java.util.ArrayList;
 import lichess.project.entity.Move;
 
 /**
  * @class SANParser
  * @brief Classe permettant de parser des mouvements dans la notation SAN et d'en extraire des informations détaillées.
  * 
  * Cette classe hérite de la classe SAN et fournit des méthodes spécifiques pour analyser des mouvements avec ou sans commentaires, ainsi que pour convertir une partie en une liste d'objets {@link Move}.
  */
 public class SANParser extends lichess.project.parser.SAN {
 
     /**
      * @brief Parse un mouvement basique dans la notation SAN.
      * 
      * Cette méthode analyse un mouvement simple, sans commentaires ni autres métadonnées, et ajoute les informations sous forme d'objet {@link Move}.
      * 
      * @param moves Liste dans laquelle les mouvements seront ajoutés.
      * @param rawMove Le mouvement brut à analyser.
      * 
      * @note Le mouvement est attendu sous forme de chaîne de caractères avec un ordre suivi d'un ou deux coups.
      */
     public static void parseBasicMove(List<Move> moves, String rawMove) {
         final String[] tokens = rawMove.split(" ");
         final String order = tokens[ORDER_INDEX].replace(".", "");
         moves.add(new Move(order, tokens[BASIC_WINDEX]));
         if(tokens.length > 2) { moves.add(new Move(order, tokens[BASIC_BINDEX])); }
     }
 
     /**
      * @brief Parse un mouvement commenté dans la notation SAN.
      * 
      * Cette méthode analyse un mouvement avec des informations supplémentaires comme l'évaluation, l'horloge, etc.
      * 
      * @param moves Liste dans laquelle les mouvements seront ajoutés.
      * @param rawMove Le mouvement brut à analyser, y compris les commentaires.
      * 
      * @note Le mouvement est attendu sous forme de chaîne de caractères avec un ou plusieurs coups, et chaque coup peut avoir des métadonnées comme l'évaluation et l'horloge.
      */
     public static void parseCommentedMove(List<Move> moves, String rawMove) {
         final Pattern movePattern = Pattern.compile(ANY_MOVE);
         final Pattern clockPattern = Pattern.compile(TAG_CLOCK);
         final Pattern evalPattern = Pattern.compile(TAG_EVAL);
         final String[] individualMoves = rawMove.split(MOVE_SEP);
         final String order = rawMove.split(" ")[ORDER_INDEX].replace(".", "");
         Matcher matcher;
 
         for(String move:individualMoves) {
             String description;
             String clock;
             String eval;
 
             matcher = movePattern.matcher(move);
             description = matcher.find() ? matcher.group(MATCH_GROUP) : "";
             matcher = clockPattern.matcher(move);
             clock = matcher.find() ? matcher.group(MATCH_GROUP).split(" ")[CMT_VAL_INDEX].replace("]","") : "";
             matcher = evalPattern.matcher(move);
             eval = matcher.find() ? matcher.group(MATCH_GROUP).split(" ")[CMT_VAL_INDEX].replace("]","") : "";
 
             moves.add(new Move(order, description, eval, clock));
         }
     }
 
     /**
      * @brief Convertit une chaîne représentant une partie en une liste de mouvements.
      * 
      * Cette méthode analyse une partie complète sous forme de chaîne de caractères et extrait tous les mouvements, y compris ceux de type basique ou commenté.
      * 
      * @param game La chaîne représentant la partie entière, avec tous les mouvements.
      * @return Liste des objets {@link Move} représentant les mouvements de la partie.
      */
     public static List<Move> stringToList(String game) {
         final Pattern rawMove = Pattern.compile(PTRN_CMT_MOVE);
         final Pattern basicMove = Pattern.compile(PTRN_BASIC_MOVE);
         Matcher matcher = rawMove.matcher(game);
         List<Move> moves = new ArrayList<Move>();
 
         while(matcher.find()) {
             final String moveValue = matcher.group(MATCH_GROUP);
             Matcher isBasic = basicMove.matcher(moveValue);
             if(isBasic.find()) {
                 parseBasicMove(moves, moveValue);
             } else {
                 parseCommentedMove(moves, moveValue);
             }
         }
 
         return moves;
     }
 }
 