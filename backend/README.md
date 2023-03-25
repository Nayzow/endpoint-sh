# Endpoint.sh API

API Java Springboot qui renvoie des données relatives à de la documentation informatique.
Vous pouvez y retrouver des articles écrits par mes soins ainsi que les principales technologies que j'utilise.

Lien de l'application web Angular pour afficher les données : https://github.com/Nayzow/endpoint-sh-frontend

## Get Started

#### 1. Clonez le dépôt du projet en utilisant la commande

```bash
git clone https://github.com/Nayzow/endpoint-sh-api
```

#### 2. Créer une base de donnée avec le fichier sql :

```bash
resources/sql/database.sql
```

#### 3. Installation

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
docker build -t endpoint-sh-api .
```

####  2. Run le conteneur Docker

```bash
docker run --name dns-services-api -p 8080:8080 -d endpoint-sh-api
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
