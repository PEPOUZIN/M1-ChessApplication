/**
 * @file Player.java
 * @brief Représente un joueur de la plateforme de jeu Lichess avec ses statistiques et informations personnelles.
 * 
 * Cette classe contient des informations telles que le nom du joueur, son classement Elo dans différentes catégories, 
 * son titre, ses statistiques de jeu et la date de création de son compte.
 */

package lichess.project.entity;

import java.sql.Date;

/**
 * @class Player
 * @brief Classe représentant un joueur avec ses statistiques de jeu et ses informations personnelles.
 * 
 * La classe `Player` contient des informations détaillées sur un joueur telles que son nom, son Elo dans différentes variantes 
 * de jeu, son titre, son ratio de victoires/défaites, etc. Elle permet également de gérer et de récupérer ces informations 
 * via des getters et setters.
 */

public class Player {
    
    /**
     * @brief Nom du joueur.
     * 
     * Cette variable stocke le nom du joueur.
     */
    private String name;

    /**
     * @brief Elo classique du joueur.
     * 
     * Cette variable stocke l'Elo classique du joueur.
     */
    private String eloClassic;

    /**
     * @brief Elo Blitz du joueur.
     * 
     * Cette variable stocke l'Elo Blitz du joueur.
     */
    private String eloBlitz;

    /**
     * @brief Elo rapide du joueur.
     * 
     * Cette variable stocke l'Elo rapide du joueur.
     */
    private String eloFast;

    /**
     * @brief Elo Bullet du joueur.
     * 
     * Cette variable stocke l'Elo Bullet du joueur.
     */
    private String eloBullet;

    /**
     * @brief Titre du joueur.
     * 
     * Cette variable stocke le titre du joueur (ex : Grand Maître, Maître International, etc.).
     */
    private String title;

    /**
     * @brief Classement global du joueur.
     * 
     * Cette variable stocke le classement actuel du joueur sur la plateforme.
     */
    private String ranking;

    /**
     * @brief Nombre total de parties jouées par le joueur.
     * 
     * Cette variable stocke le nombre total de parties jouées par le joueur.
     */
    private String totalGames;

    /**
     * @brief Ratio victoires/défaites du joueur.
     * 
     * Cette variable stocke le ratio de victoires par rapport aux défaites du joueur.
     */
    private String winLossRatio;

    /**
     * @brief Ratio de victoires/défaites en jouant avec les pièces blanches.
     * 
     * Cette variable stocke le ratio de victoires/défaites du joueur lorsqu'il joue avec les pièces blanches.
     */
    private String whiteWinLossRatio;

    /**
     * @brief Ratio de victoires/défaites en jouant avec les pièces noires.
     * 
     * Cette variable stocke le ratio de victoires/défaites du joueur lorsqu'il joue avec les pièces noires.
     */
    private String blackWinLossRatio;

    /**
     * @brief Nombre moyen de coups pour gagner une partie.
     * 
     * Cette variable stocke le nombre moyen de coups effectués par le joueur pour gagner une partie.
     */
    private String averageMovesToWin;

    /**
     * @brief Date de création du compte du joueur.
     * 
     * Cette variable stocke la date de création du compte du joueur.
     */
    private String accountCreationDate;

    /**
     * @brief Ouverture préférée du joueur.
     * 
     * Cette variable stocke l'ouverture préférée du joueur dans ses parties.
     */
    private String favoriteOpening;

    /**
     * @brief Constructeur par défaut de la classe Player.
     * 
     * Ce constructeur initialise toutes les variables de la classe avec des valeurs vides ou nulles.
     */
    public Player() {
        this.name = "";
        this.eloClassic = "";
        this.eloBlitz = "";
        this.eloFast = "";
        this.eloBullet = "";
        this.title = "";
        this.ranking = "";
        this.totalGames = "";
        this.winLossRatio = "";
        this.whiteWinLossRatio = "";
        this.blackWinLossRatio = "";
        this.averageMovesToWin = "";
        this.accountCreationDate = "";
        this.favoriteOpening = "";
    }

    // Getters et Setters

    /**
     * @brief Récupère le nom du joueur.
     * 
     * @return Le nom du joueur.
     */
    public String getName() {
        return name;
    }

    /**
     * @brief Définit le nom du joueur.
     * 
     * @param name Le nom du joueur à définir.
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @brief Récupère l'Elo classique du joueur.
     * 
     * @return L'Elo classique du joueur.
     */
    public String getElo() {
        return eloClassic;
    }

    /**
     * @brief Définit l'Elo classique du joueur.
     * 
     * @param eloClassic L'Elo classique à définir.
     */
    public void setElo(String eloClassic) {
        this.eloClassic = eloClassic;
    }

    /**
     * @brief Récupère l'Elo Blitz du joueur.
     * 
     * @return L'Elo Blitz du joueur.
     */
    public String getEloBlitz() {
        return eloBlitz;
    }

    /**
     * @brief Définit l'Elo Blitz du joueur.
     * 
     * @param eloBlitz L'Elo Blitz à définir.
     */
    public void setEloBlitz(String eloBlitz) {
        this.eloBlitz = eloBlitz;
    }

    /**
     * @brief Récupère l'Elo rapide du joueur.
     * 
     * @return L'Elo rapide du joueur.
     */
    public String getEloFast() {
        return eloFast;
    }

    /**
     * @brief Définit l'Elo rapide du joueur.
     * 
     * @param eloFast L'Elo rapide à définir.
     */
    public void setEloFast(String eloFast) {
        this.eloFast = eloFast;
    }

    /**
     * @brief Récupère l'Elo Bullet du joueur.
     * 
     * @return L'Elo Bullet du joueur.
     */
    public String getEloBullet() {
        return eloBullet;
    }

    /**
     * @brief Définit l'Elo Bullet du joueur.
     * 
     * @param eloBullet L'Elo Bullet à définir.
     */
    public void setEloBullet(String eloBullet) {
        this.eloBullet = eloBullet;
    }

    /**
     * @brief Récupère le titre du joueur.
     * 
     * @return Le titre du joueur.
     */
    public String getTitle() {
        return title;
    }

    /**
     * @brief Définit le titre du joueur.
     * 
     * @param title Le titre du joueur à définir.
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * @brief Récupère le classement du joueur.
     * 
     * @return Le classement du joueur.
     */
    public String getRanking() {
        return ranking;
    }

    /**
     * @brief Définit le classement du joueur.
     * 
     * @param ranking Le classement à définir.
     */
    public void setRanking(String ranking) {
        this.ranking = ranking;
    }

    /**
     * @brief Récupère le nombre total de parties jouées par le joueur.
     * 
     * @return Le nombre total de parties.
     */
    public String getTotalGames() {
        return totalGames;
    }

    /**
     * @brief Définit le nombre total de parties jouées par le joueur.
     * 
     * @param totalGames Le nombre total de parties à définir.
     */
    public void setTotalGames(String totalGames) {
        this.totalGames = totalGames;
    }

    /**
     * @brief Récupère le ratio victoires/défaites du joueur.
     * 
     * @return Le ratio victoires/défaites.
     */
    public String getWinLossRatio() {
        return winLossRatio;
    }

    /**
     * @brief Définit le ratio victoires/défaites du joueur.
     * 
     * @param winLossRatio Le ratio à définir.
     */
    public void setWinLossRatio(String winLossRatio) {
        this.winLossRatio = winLossRatio;
    }

    /**
     * @brief Récupère le ratio de victoires/défaites en jouant avec les pièces blanches.
     * 
     * @return Le ratio victoires/défaites avec les pièces blanches.
     */
    public String getWhiteWinLossRatio() {
        return whiteWinLossRatio;
    }

    /**
     * @brief Définit le ratio de victoires/défaites en jouant avec les pièces blanches.
     * 
     * @param whiteWinLossRatio Le ratio à définir.
     */
    public void setWhiteWinLossRatio(String whiteWinLossRatio) {
        this.whiteWinLossRatio = whiteWinLossRatio;
    }

    /**
     * @brief Récupère le ratio de victoires/défaites en jouant avec les pièces noires.
     * 
     * @return Le ratio victoires/défaites avec les pièces noires.
     */
    public String getBlackWinLossRatio() {
        return blackWinLossRatio;
    }

    /**
     * @brief Définit le ratio de victoires/défaites en jouant avec les pièces noires.
     * 
     * @param blackWinLossRatio Le ratio à définir.
     */
    public void setBlackWinLossRatio(String blackWinLossRatio) {
        this.blackWinLossRatio = blackWinLossRatio;
    }

    /**
     * @brief Récupère le nombre moyen de coups pour gagner.
     * 
     * @return Le nombre moyen de coups pour gagner.
     */
    public String getAverageMovesToWin() {
        return averageMovesToWin;
    }

    /**
     * @brief Définit le nombre moyen de coups pour gagner.
     * 
     * @param averageMovesToWin Le nombre à définir.
     */
    public void setAverageMovesToWin(String averageMovesToWin) {
        this.averageMovesToWin = averageMovesToWin;
    }

    /**
     * @brief Récupère la date de création du compte.
     * 
     * @return La date de création du compte.
     */
    public String getAccountCreationDate() {
        return accountCreationDate;
    }

    /**
     * @brief Définit la date de création du compte du joueur.
     * 
     * @param accountCreationDate La date de création à définir.
     */
    public void setAccountCreationDate(String accountCreationDate) {
        this.accountCreationDate = accountCreationDate;
    }

    /**
     * @brief Récupère l'ouverture préférée du joueur.
     * 
     * @return L'ouverture préférée.
     */
    public String getFavoriteOpening() {
        return favoriteOpening;
    }

    /**
     * @brief Définit l'ouverture préférée du joueur.
     * 
     * @param favoriteOpening L'ouverture préférée à définir.
     */
    public void setFavoriteOpening(String favoriteOpening) {
        this.favoriteOpening = favoriteOpening;
    }

    /**
     * @brief Retourne une chaîne de caractères représentant le joueur.
     * 
     * @return Le nom du joueur.
     */
    @Override
    public String toString() { 
        return this.name; 
    }
}
