# Endpoint.sh Database

Base de donnée MySql pour stocker les données du projet. La base de données contient de la documentation informatique avec des articles sur des technologies ainsi que les principales commandes utiles de ces dernières.

## Informations

Le script SQL pour la création de la base de donnée se situe dans le dossier resources.

```
database : documentation
login : root
password : test
```

## Installation

#### 1. Build l'image

```bash
docker build -t endpoint-sh-database .
```

#### 2. Lancer le container à partir de l'image

```bash
docker run --name endpoint-sh-database -p 3306:3306 -d endpoint-sh-database
```

## UML

![img.png](resources/uml.png)