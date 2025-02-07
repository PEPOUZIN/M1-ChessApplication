/**
 * @file ChessGame.java
 * @brief Représente une partie d'échecs complète, avec les joueurs, les mouvements et les métadonnées associées.
 * 
 * Cette classe étend `PGNLichess` et permet de stocker les informations relatives à une partie d'échecs, y compris les mouvements effectués,
 * les informations sur les joueurs, le résultat de la partie et d'autres détails comme l'événement, l'ouverture, et l'évaluation des parties.
 */

package lichess.project.entity;

import java.util.ArrayList;
import java.util.List;
import lichess.project.parser.PGNLichess;

/**
 * @class ChessGame
 * @brief Classe représentant une partie d'échecs complète.
 * 
 * La classe `ChessGame` hérite de la classe `PGNLichess` et permet de gérer une partie d'échecs en détaillant les informations comme les joueurs, les
 * mouvements effectués, le résultat de la partie, les informations d'événement et d'horloge, et bien plus. Elle comprend aussi des méthodes pour manipuler
 * et afficher ces données.
 */
public class ChessGame extends PGNLichess {

    /**
     * @brief Enumération des différents types d'événements pour une partie d'échecs.
     * 
     * Cette énumération définit les types d'événements pouvant être associés à une partie d'échecs, comme BLITZ, BULLET et CLASSICAL.
     */
    private static enum Event {
        UNDEFINED(0),
        BLITZ(1),
        BULLET(2),
        CLASSICAL(3);
    
        public final int label;
        private Event(int label) {
            this.label = label;
        }
    }

    /**
     * @brief Liste des mouvements effectués pendant la partie.
     * @see Move
     * Cette variable stocke la liste des mouvements effectués durant la partie sous forme d'objets `Move`.
     */
    private List<Move> moves;

    /**
     * @brief Le joueur ayant les pièces blanches.
     * @see Player
     * Cette variable stocke l'objet `Player` représentant le joueur blanc.
     */
    private Player whitePlayer;

    /**
     * @brief Le joueur ayant les pièces noires.
     * @see Player
     * Cette variable stocke l'objet `Player` représentant le joueur noir.
     */
    private Player blackPlayer;

    // Métadonnées de la partie

    /**
     * @brief Le nom de l'événement (ex : un tournoi).
     */
    private String event;

    /**
     * @brief Le site où la partie a eu lieu.
     */
    private String site;

    /**
     * @brief Le résultat de la partie (ex : "1-0" pour une victoire des blancs).
     */
    private String result;

    /**
     * @brief La date de la partie sous forme de chaîne (ex : "2024.12.11").
     */
    private String date;

    /**
     * @brief L'heure à laquelle la partie a eu lieu.
     */
    private String time;

    /**
     * @brief Le code ECO de l'ouverture jouée (ex : "C50").
     */
    private String eco;

    /**
     * @brief Le nom de l'ouverture jouée.
     */
    private String opening;

    /**
     * @brief Le contrôle du temps utilisé dans la partie (ex : "5+3" pour 5 minutes + 3 secondes).
     */
    private String timeControl;

    /**
     * @brief Le terme qui a mis fin à la partie (ex : "time forfeit" ou "checkmate").
     */
    private String termination;

    /**
     * @brief La différence d'ELO du joueur blanc après la partie.
     */
    private String whiteRatingDiff;

    /**
     * @brief La différence d'ELO du joueur noir après la partie.
     */
    private String blackRatingDiff;

    /**
     * @brief Indique si la partie était classée.
     */
    private boolean rated;

    /**
     * @brief Le nombre de mouvements effectués dans la partie.
     */
    private int nb_moves;

    /**
     * @brief Un code de hachage unique pour la partie basé sur les joueurs et la date.
     */
    private String hashcode;

    /**
     * @brief Constructeur par défaut pour initialiser une nouvelle partie d'échecs.
     * 
     * Ce constructeur initialise tous les champs avec des valeurs par défaut : une liste vide de mouvements, des joueurs vides, et des valeurs 
     * par défaut pour les autres métadonnées.
     */
    public ChessGame() {
        super();
        this.moves = new ArrayList<Move>();
        this.event = "";
        this.site = "";
        this.whitePlayer = new Player();
        this.blackPlayer = new Player(); 
        this.result = "";
        this.date = "";
        this.time = "";
        this.eco = "";
        this.opening = "";
        this.timeControl = "";
        this.termination = "";
        this.whiteRatingDiff = "";
        this.blackRatingDiff = "";
        this.rated = false;
        this.nb_moves = 0;
        this.hashcode = "";
    }

    // Getters et Setters

    /**
     * @brief Récupère la liste des mouvements effectués dans la partie.
     * @return La liste des mouvements de type {@link Move}.
     */
    public List<Move> getMoves() { return this.moves; }

    /**
     * @brief Récupère le joueur blanc.
     * @return Le joueur blanc de type {@link Player}.
     */
    public Player getWhitePlayer() { return this.whitePlayer; }

    /**
     * @brief Récupère le joueur noir.
     * @return Le joueur noir de type {@link Player}.
     */
    public Player getBlackPlayer() { return this.blackPlayer; }

    /**
     * @brief Récupère le nom de l'événement dans lequel la partie s'est déroulée.
     * @return Le nom de l'événements.
     */
    public String getEvent() { return this.event; }

    /**
     * @brief Récupère le site où la partie a eu lieu.
     * @return Le nom du sites.
     */
    public String getSite() { return this.site; }

    /**
     * @brief Récupère le résultat de la partie.
     * @return Le résultat de la parties.
     */
    public String getResult() { return this.result; }

    /**
     * @brief Récupère la date et l'heure de la partie sous un format combiné "YYYY-MM-DD HH:MM:SS".
     * @return La date et l'heure de la parties.
     */
    public String getDate() {
        String formattedDate = this.date.replace(".", "-");
        String timestampStr = formattedDate + " " + this.time;
        return timestampStr;
    }

    /**
     * @brief Récupère l'heure exacte de la partie.
     * @return L'heure de la parties.
     */
    public String getTime() { return this.time; }

    /**
     * @brief Récupère la différence de classement Elo du joueur blanc.
     * @return La différence de classement Elo du joueur blancs.
     */
    public String getWhiteRatingDiff() { return this.whiteRatingDiff; }

    /**
     * @brief Récupère la différence de classement Elo du joueur noir.
     * @return La différence de classement Elo du joueur noirs.
     */
    public String getBlackRatingDiff() { return this.blackRatingDiff; }

    /**
     * @brief Récupère le code ECO de l'ouverture utilisée dans la partie.
     * @return Le code ECO de l'ouvertures.
     */
    public String getEco() { return this.eco; }

    /**
     * @brief Récupère le nom de l'ouverture utilisée dans la partie.
     * @return Le nom de l'ouvertures.
     */
    public String getOpening() { return this.opening; }

    /**
     * @brief Récupère le type de contrôle de temps utilisé dans la partie.
     * @return Le type de contrôle de tempss.
     */
    public String getTimeControl() { return this.timeControl; }

    /**
     * @brief Récupère la manière dont la partie a été terminée.
     * @return La description de la terminaisons.
     */
    public String getTermination() { return this.termination; }

    /**
     * @brief Vérifie si la partie était notée.
     * @return {@code true} si la partie était notée, sinon {@code false}.
     */
    public boolean isRated() { return this.rated; }

    /**
     * @brief Récupère le nombre de mouvements dans la partie.
     * @return Le nombre de mouvements sous forme d'entier.
     */
    public int getNbMoves() { return this.moves.size(); }

    /**
     * @brief Génère un code unique (hashcode) basé sur les joueurs et la date de la partie.
     * @return Un code unique (hashcode).
     */
    public String getHascode() {
        return this.getWhitePlayer().toString() + "" + this.getBlackPlayer().toString() + "" + this.getDate();
    }

    /**
     * @brief Définit la liste des mouvements effectués dans la partie.
     * @param moves La liste des mouvements à définir.
     */
    public void setMoves(List<Move> moves) { this.moves = moves; }

    /**
     * @brief Définit l'événement où la partie a eu lieu.
     * @param event Le nom de l'événement à définir.
     */
    public void setEvent(String event) { this.event = event; }

    /**
     * @brief Définit le site où la partie a eu lieu.
     * @param site Le nom du site à définir.
     */
    public void setSite(String site) { this.site = site; }

    /**
     * @brief Définit le résultat de la partie.
     * @param result Le résultat de la partie à définir.
     */
    public void setResult(String result) { this.result = result; }

    /**
     * @brief Définit la date de la partie.
     * @param date La date à définir.
     */
    public void setDate(String date) { this.date = date; }

    /**
     * @brief Définit l'heure de la partie.
     * @param time L'heure à définir.
     */
    public void setTime(String time) { this.time = time; }

    /**
     * @brief Définit la différence de classement Elo du joueur blanc.
     * @param rtd La différence de classement Elo du joueur blanc à définir.
     */
    public void setWhiteRatingDiff(String rtd) { this.whiteRatingDiff = rtd; }

    /**
     * @brief Définit la différence de classement Elo du joueur noir.
     * @param rtd La différence de classement Elo du joueur noir à définir.
     */
    public void setBlackRatingDiff(String rtd) { this.blackRatingDiff = rtd; }

    /**
     * @brief Définit le code ECO de l'ouverture utilisée.
     * @param eco Le code ECO à définir.
     */
    public void setEco(String eco) { this.eco = eco; }

    /**
     * @brief Définit le nom de l'ouverture utilisée dans la partie.
     * @param opening Le nom de l'ouverture à définir.
     */
    public void setOpening(String opening) { this.opening = opening; }

    /**
     * @brief Définit le type de contrôle de temps utilisé dans la partie.
     * @param time Le type de contrôle de temps à définir.
     */
    public void setTimeControl(String time) { this.timeControl = time; }

    /**
     * @brief Définit la manière dont la partie a été terminée.
     * @param term La terminaison de la partie à définir.
     */
    public void setTermination(String term) { this.termination = term; }

    /**
     * @brief Définit si la partie était notée.
     * @param rated Indique si la partie était notée.
     */
    public void setRated(boolean rated) { this.rated = rated; }

    /**
     * @brief Définit le nombre de mouvements dans la partie.
     * @param mv Le nombre de mouvements à définir.
     */
    public void setNbMoves(int mv) { this.nb_moves = mv; }

    /**
     * @brief Définit un code unique (hashcode) pour la partie.
     * @param hs Le code unique (hashcode) à définir.
     */
    public void setHashcode(String hs) { this.hashcode = hs; }

    /**
     * @brief Retourne une chaîne de caractères représentant la partie d'échecs, incluant les informations sur les joueurs, les mouvements, etc.
     * 
     * @return Une représentation textuelle de la partie.
     */
    @Override
    public String toString() {
        String output =  "GAME DATA\n"
            +"\t"+TAG_EVENT+"="+this.getEvent()+"\n"
            +"\t"+TAG_SITE+"="+this.getSite()+"\n"
            +"\t"+TAG_WHITE+"="+this.getWhitePlayer().getName()+"\n"
            +"\t"+TAG_BLACK+"="+this.getBlackPlayer().getName()+"\n"
            +"\t"+TAG_RESULT+"="+this.getResult()+"\n"
            +"\t"+TAG_UTCDATE+"="+this.getDate()+"\n"
            +"\t"+TAG_UTCTIME+"="+this.getTime()+"\n"
            +"\t"+TAG_WELO+"="+this.getWhitePlayer().getElo()+"\n"
            +"\t"+TAG_BELO+"="+this.getBlackPlayer().getElo()+"\n"
            +"\t"+TAG_WRTD+"="+this.getWhiteRatingDiff()+"\n"
            +"\t"+TAG_BRTD+"="+this.getBlackRatingDiff()+"\n"
            +"\t"+TAG_ECO+"="+this.getEco()+"\n"
            +"\t"+TAG_OPENING+"="+this.getOpening()+"\n"
            +"\t"+TAG_TIMECTL+"="+this.getTimeControl()+"\n"
            +"\t"+TAG_TERM+"="+this.getTermination()+"\n";

            for(Move m:this.moves) {
                output += m.toString() + "\n";
            }

        return output;
    }
}