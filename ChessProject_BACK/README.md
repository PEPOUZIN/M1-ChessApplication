# **ChessProject BACK** 

## **Pour commencer** 

1. **Installation** :

**Clonez le projet en utilisant l'une des options suivantes** : 
- Avec `git clone` : ``` git clone &lt;URL_DU_REPO&gt; ``` 
- Ou téléchargez et extrayez le fichier *ZIP*. 


2. **Lancement du projet** :

**Exécutez la commande suivante dans un terminal à la racine du projet cloné**: 
```docker-compose up ``` 

Attendez que le processus de l'ETL se termine et que l'API soit appelée automatiquement. 


## **Utilisation avec Docker** 

1. **Lister les containers actifs** :

**Exécutez la commande suivante pour obtenir le nom du conteneur actif** : 
```docker ps ``` 

2. **Accéder à PostgreSQL dans le conteneur** :

**Remplacez `nom_du_container` par le nom réel du conteneur obtenu précédemment** : 
```bash docker exec -it _nom_du_container_ psql -U will -d chess ``` 

## **Exécution de commandes SQL** 
Une fois dans l'environnement PostgreSQL, vous pouvez exécuter des requêtes SQL sur les tables suivantes : 
**Game**, **Moves**, **Player**, **Tournament**. 

### **Exemple de requêtes** :
**Lister toutes les parties enregistrées :** 
```SELECT * FROM Game;```

**Afficher les mouvements d'une partie spécifique**:
```SELECT * FROM Moves WHERE game_id = 1;``` 

**Lister les joueurs enregistrés**:
```SELECT * FROM Player;``` 

**Voir les tournois disponibles :** 
```SELECT * FROM Tournament;``` 

## **Remarque** 
Assurez-vous que Docker est installé et en cours d'exécution sur votre machine avant de lancer les commandes ci-dessus. 

