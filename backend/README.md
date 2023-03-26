# Endpoint.sh API

API Java Springboot qui renvoie des données relatives à de la documentation informatique.
Vous pouvez y retrouver des articles écrits par mes soins ainsi que les principales technologies que j'utilise.

#### Installation

#### Installation avec Maven

#### 1. À la racine du projet, installez les dépendances en utilisant la commande

```bash
mvn clean install
```

#### 2. Démarrez l'application avec la commande :

```bash
mvn spring-boot:run
```

#### Installation avec Docker

#### 1. Build l'image Docker

```bash
docker build -t endpoint-sh-backend .
```

####  2. Run le conteneur Docker

```bash
docker run --name endpoint-sh-backend -p 8080:8080 -d endpoint-sh-backend
```

### Routes de l'application

```
/articles : renvoie toutes les technologies sur lesquels des articles ont étés écrits.
```

```
/articles/{id} : renvoie l'article avec un id donné.
```

```
/articles/{technology} : renvoie touts les articles liés à une technologie.
```

```
/commands : renvoie toutes les technologies sur lesquels des commandes ont étés répertoriées.
```

```
/commands/{id} : renvoie la commande avec un id donné.
```

```
/commands/{technology} : renvoie toutes les commandes répértoriées sur une technologie donnée.
```
