# Endpoint.sh Frontend

Frontend de l'API endpoint-sh-api disponible sur mon github : https://github.com/Nayzow/endpoint-sh-api
L'application web est réalisée avec Angular et le langage TypeScript. Elle comporte plusieurs pages affichant des articles écris par mes soins et des vidéos sur diverses technologies.

## Presentation

![presentation.gif](resources%2Fimages%2Fscreenshots%2Fpresentation.gif)

## Routes de l'application

Les routes de l'application sont définies dans le fichier app-routing.module.ts. Les routes disponibles sont :

```
/articles : voir toutes les technologies sur lesquels des articles ont étés écrits.
```

```
/articles/technology : voir touts les articles liés à une technologie.
```

```
/commands : voir toutes les technologies sur lesquels des commandes ont étés répertoriées.
```

```
/commands/{technology} : voir toutes les commandes répértoriées sur une technologie.
```

## Installation classique

Assurez-vous d'avoir Node.js et npm installés sur votre ordinateur. Vous pouvez vérifier leur installation en ouvrant une invite de commande et en tapant node -v et npm -v.

#### 1. Clonez le dépôt du projet en utilisant la commande 

```bash
git clone https://github.com/Nayzow/endpoint-sh-frontend
```

#### 2. À la racine du projet, installez les dépendances en utilisant la commande 

```bash
npm install
```

#### 3. Démarrez l'application en utilisant la commande 

```bash
npm start
```

## Installation avec Docker

Assurez-vous d'avoir Docker installé sur votre ordinateur.

#### 1. Clonez le dépôt du projet en utilisant la commande 

```bash
git clone https://github.com/Nayzow/endpoint-sh-frontend
```

#### 2. À la racine du projet, Construisez l'image Docker à partir du fichier Dockerfile en utilisant la commande 

```bash
docker build -t endpoint-sh-frontend .
```

#### 3. Exécutez le conteneur en utilisant la commande 

```bash
docker run --name endpoint-sh-frontend -p 80:80 -d endpoint-sh-frontend
```

L'application devrait maintenant être accessible à l'adresse http://localhost:80 à l'aide d'un serveur nginx.
