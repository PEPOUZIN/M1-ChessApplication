/**
 * @file Move.java
 * @brief Représente un mouvement effectué dans une partie d'échecs dans un fichier .pgn .
 * 
 * Cette classe contient des informations sur un mouvement, y compris l'ordre du coup, sa description,
 * son évaluation et l'état de l'horloge au moment du coup.
 */

package lichess.project.entity;

/**
 * @class Move
 * @brief Classe représentant un mouvement effectué dans une partie d'échecs.
 * 
 * La classe `Move` contient des informations concernant un mouvement spécifique dans une partie d'échecs, telles que 
 * le numéro du coup, une description du coup, une évaluation et l'état de l'horloge au moment du coup.
 * Elle permet également de gérer et de récupérer ces informations via des getters et setters.
 */
public class Move {

    /**
     * @brief L'ordre du mouvement dans la partie (ex : 1, 2, 3...).
     * 
     * Cette variable stocke l'ordre du coup dans la partie (par exemple, "1" pour le premier coup).
     */
    private String order;

    /**
     * @brief La description du mouvement (ex : "e2-e4", "Nf3").
     * 
     * Cette variable stocke la notation du mouvement effectué (par exemple, "e2-e4" ou "Nf3").
     */
    private String description;

    /**
     * @brief L'évaluation du mouvement (optionnelle).
     * 
     * Cette variable stocke l'évaluation du coup, par exemple "-1" pour un avantage pour les noirs, "1" pour un avantage pour les blancs, etc.
     * 
     */
    private String eval;

    /**
     * @brief L'état de l'horloge au moment du mouvement (optionnel).
     * 
     * Cette variable stocke le temps restant sur l'horloge au moment où le coup a été joué.
     */
    private String clock;

    /**
     * @brief Constructeur par défaut de la classe Move.
     * 
     * Ce constructeur initialise toutes les variables de la classe avec des valeurs vides ou nulles.
     */
    public Move() {
        this.order = "";
        this.description = "";
        this.eval = "";
        this.clock = "";
    }

    /**
     * @brief Constructeur avec l'ordre et la description du mouvement utilisé si l'évaluation et l'horloge ne sont pas disponibles.
     * 
     * @param order L'ordre du mouvement dans la partie.
     * @param desc La description du mouvement (ex : "e2").
     */
    public Move(String order, String desc) {
        this.order = order;
        this.description = desc;
        this.eval = "";
        this.clock = "";
    }

    /**
     * @brief Constructeur avec tous les paramètres du mouvement.
     * 
     * @param order L'ordre du mouvement dans la partie.
     * @param desc La description du mouvement.
     * @param eval L'évaluation du mouvement.
     * @param clock L'état de l'horloge au moment du coup.
     */
    public Move(String order, String desc, String eval, String clock) {
        this.order = order;
        this.description = desc;
        this.eval = eval;
        this.clock = clock;
    }

    // Getters et Setters

    /**
     * @brief Récupère l'ordre du mouvement.
     * 
     * @return L'ordre du mouvement.
     */
    public String getOrder() { 
        return this.order; 
    }

    /**
     * @brief Récupère la description du mouvement.
     * 
     * @return La description du mouvement.
     */
    public String getDescription() { 
        return this.description; 
    }

    /**
     * @brief Récupère l'évaluation du mouvement.
     * 
     * @return L'évaluation du mouvement.
     */
    public String getEval() { 
        return this.eval; 
    }

    /**
     * @brief Récupère l'état de l'horloge au moment du mouvement.
     * 
     * @return L'état de l'horloge.
     */
    public String getClock() { 
        return this.clock; 
    }

    /**
     * @brief Définit l'ordre du mouvement.
     * 
     * @param order L'ordre à définir pour le mouvement.
     */
    public void setOrder(String order) { 
        this.order = order; 
    }

    /**
     * @brief Définit la description du mouvement.
     * 
     * @param desc La description à définir pour le mouvement.
     */
    public void setDescription(String desc) { 
        this.description = desc; 
    }

    /**
     * @brief Définit l'évaluation du mouvement.
     * 
     * @param eval L'évaluation à définir pour le mouvement.
     */
    public void setEval(String eval) { 
        this.eval = eval; 
    }

    /**
     * @brief Définit l'état de l'horloge au moment du mouvement.
     * 
     * @param clock L'état de l'horloge à définir pour le mouvement.
     */
    public void setClock(String clock) { 
        this.clock = clock; 
    }

    /**
     * @brief Retourne une chaîne de caractères représentant le mouvement.
     * 
     * Cette méthode génère une représentation textuelle du mouvement, y compris l'ordre, la description, 
     * l'évaluation et l'état de l'horloge (si disponibles).
     * 
     * @return Une chaîne de caractères représentant le mouvement sous la forme : "1. e2 { [%eval 0.5] [%clk 0:05:30] }".
     */
    @Override
    public String toString() {
        return this.getOrder() + ". "
                + this.description + " "
                + "{ [%eval " + this.eval + "]"
                + " [%clk " + this.clock + "] }";
    }
}

