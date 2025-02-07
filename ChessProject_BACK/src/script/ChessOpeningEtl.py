import psycopg2
"""Script python pour recuperer d'un fichier PGN les ouvertures d'echecs et les mettre dans la BD"""
# Connexion à la base de données
def connect_to_db():
    try:
        conn = psycopg2.connect(
            dbname="chess",
            user="pe",
            password="pe",  # Remplacez par votre mot de passe
            host="localhost",
            port="5432"
        )
        return conn
    except Exception as e:
        print(f"Erreur de connexion à la base de données : {e}")
        return None

# Fonction pour nettoyer la table
def clean_table(conn):
    try:
        cur = conn.cursor()
        cur.execute("TRUNCATE TABLE chess_openings RESTART IDENTITY;")
        conn.commit()
        print("Table nettoyée avec succès.")
        cur.close()
    except Exception as e:
        print(f"Erreur lors du nettoyage de la table : {e}")

# Fonction pour insérer les données dans la base de données
def insert_into_db(conn, site, white_move, black_move, moves):
    try:
        cur = conn.cursor()
        # Nettoyage et formatage des coups (enlever les espaces superflus)
        moves = " ".join(moves.split())  # Supprime les espaces en trop

        # Si black_move est vide, on l'assigne à "N/A"
        if not black_move:
            black_move = "N/A"

        # Insertion dans la base de données
        query = """
            INSERT INTO chess_openings (site, white_move, black_move, moves)
            VALUES (%s, %s, %s, %s)
        """
        cur.execute(query, (site, white_move, black_move, moves))
        conn.commit()
        print(f"Inséré : site={site}, white_move={white_move}, black_move={black_move}, moves={moves}")
        cur.close()
    except Exception as e:
        print(f"Erreur lors de l'insertion dans la base de données : {e}")
        conn.rollback()

# Fonction pour insérer manuellement la première ligne avant de traiter le fichier PGN
def insert_manual_first_row(conn):
    try:
        # Insertion manuelle de la première ligne spécifique
        site = "A00"
        white_move = "Polish (Sokolsky) opening"
        black_move = "N/A"  # Pas de coup noir dans ce cas
        moves = "1. b4"

        insert_into_db(conn, site, white_move, black_move, moves)
        print("Première ligne insérée manuellement.")
    except Exception as e:
        print(f"Erreur lors de l'insertion manuelle : {e}")

# Fonction pour traiter le fichier PGN et insérer les données dans la base
def process_pgn_file(file_path, conn):
    try:
        with open(file_path, "r") as file:
            lines = file.readlines()
            print(f"Nombre de lignes lues : {len(lines)}")
            
            site = ""
            white_move = ""
            black_move = None  # Valeur par défaut pour black_move
            moves = ""
            
            for line in lines:
                line = line.strip()
                
                # Vérification des balises PGN pour récupérer les informations
                if line.startswith("[Site"):
                    site = line.split('"')[1]  # Extraction du site
                elif line.startswith("[White"):
                    white_move = line.split('"')[1]  # Extraction du coup blanc
                elif line.startswith("[Black"):
                    black_move = line.split('"')[1]  # Extraction du coup noir
                elif line and not line.startswith("["):
                    # Ajout des coups à la chaîne moves
                    moves += " " + line.replace("1.", "1.")  # Assurer que chaque coup commence par "1."
                    print(f"Coups extraits : {line}")  # Affiche les coups extraits
                
                # Insertion dans la base de données lorsque toutes les informations sont présentes
                if site and white_move and moves:  # On insère dès que le site et le white_move sont trouvés
                    print(f"Avant insertion : site={site}, white_move={white_move}, black_move={black_move}, moves={moves}")
                    insert_into_db(conn, site, white_move, black_move, moves)
                    site = white_move = black_move = moves = ""  # Réinitialiser les variables après insertion
    except Exception as e:
        print(f"Erreur lors du traitement du fichier PGN : {e}")

# Exécution principale
if __name__ == "__main__":
    conn = connect_to_db()
    if conn:
        clean_table(conn)  # Nettoyage de la table avant l'insertion
        insert_manual_first_row(conn)  # Insertion manuelle de la première ligne
        file_path = "eco.txt"  # Remplacez par le chemin de votre fichier PGN
        process_pgn_file(file_path, conn)
        conn.close()
