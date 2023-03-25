CREATE DATABASE documentation;

CREATE TABLE documentation.users
(
    id       BIGINT AUTO_INCREMENT NOT NULL,
    login    VARCHAR(50)           NOT NULL,
    password VARCHAR(50)           NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE documentation.categories
(
    id   BIGINT AUTO_INCREMENT NOT NULL,
    name VARCHAR(50)           NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE documentation.technologies
(
    id          BIGINT AUTO_INCREMENT NOT NULL,
    id_category BIGINT                NOT NULL,
    name        VARCHAR(50)           NOT NULL,
    image       VARCHAR(200)          NOT NULL,
    roadmap     VARCHAR(200)          NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_category) REFERENCES categories (id)
);

CREATE TABLE documentation.commands
(
    id            BIGINT AUTO_INCREMENT NOT NULL,
    id_technology BIGINT                NOT NULL,
    name          VARCHAR(100)          NOT NULL,
    description   VARCHAR(500)          NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_technology) REFERENCES documentation.technologies (id)
);

CREATE TABLE documentation.articles
(
    id            BIGINT AUTO_INCREMENT NOT NULL,
    id_technology BIGINT                NOT NULL,
    name          VARCHAR(50)           NOT NULL,
    content       VARCHAR(10000)        NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_technology) REFERENCES technologies (id)
);

INSERT INTO documentation.users (login, password)
VALUES ('admin', 'admin');

INSERT INTO documentation.categories
VALUES (1, 'Development'),
       (2, 'System & Network')
;

INSERT INTO documentation.technologies
VALUES (1, 2, 'Cisco', 'https://drive.google.com/uc?export=view&id=1ipxPHaf9EhQx_XdT-qZMLlmqp-42aG48', 'https://drive.google.com/uc?export=view&id='),
       (2, 2, 'Docker', 'https://drive.google.com/uc?export=view&id=1MNBTdXEu-tlbOrzcY3PZlvN7muJvvl76', 'https://drive.google.com/uc?export=view&id='),
       (3, 2, 'Kubernetes', 'https://drive.google.com/uc?export=view&id=1Aux5IKU-K-fQOYZSuepantzjgB5dL4hB', 'https://drive.google.com/uc?export=view&id=1dzn_eO2mo2Z1CezOiPqX2OK8tzremqa3'),
       (4, 2, 'Linux', 'https://drive.google.com/uc?export=view&id=1vBNgf7A9mFr4ZmoBHM3vETjn0aTbZ4Zc', 'https://drive.google.com/uc?export=view&id='),
       (5, 2, 'Nmap', 'https://drive.google.com/uc?export=view&id=1NPv6L9OosPm7LozAZejxb3uvAsfd7pNM', 'https://drive.google.com/uc?export=view&id='),
       (6, 2, 'Win Server', 'https://drive.google.com/uc?export=view&id=1mYgh9h3LABDAq5fWTMy0hjKL9yocBsFu', 'https://drive.google.com/uc?export=view&id='),
       (7, 2, 'Azure', 'https://drive.google.com/uc?export=view&id=1xdvJLPJr5A6aWJ0VBHyoJtMQa4QXoMSQ', 'https://drive.google.com/uc?export=view&id='),
       (8, 1, 'Angular', 'https://drive.google.com/uc?export=view&id=18xkH0G5oeAvqJuauFblmxN6RZW_Y1MNs', 'https://drive.google.com/uc?export=view&id=1jYkxDcoNhxO-gE8XF21UKA6r22dvmXYu'),
       (9, 1, 'C-Sharp', 'https://drive.google.com/uc?export=view&id=1XesuibYGhNgcE8fFuvZuK5CkdA-rnjsc', 'https://drive.google.com/uc?export=view&id=1HWIPEn1VXBKmPTa6HklOzZXot0QfkD3W'),
       (10, 1, 'Javascript', 'https://drive.google.com/uc?export=view&id=1PGl9xrcLtk955qngHfgJiu6bAFfTrQmb', 'https://drive.google.com/uc?export=view&id=1pLmY9agbCJ4NDoUjAaRUQu8g69A0C6Mm'),
       (11, 1, 'Java', 'https://drive.google.com/uc?export=view&id=1yK8eKy_TiL4gI2_i8_mV4c_p6Kq9L7yN', 'https://drive.google.com/uc?export=view&id=1VXMwNWEl-7aRt4Gorbc__-faQs82wXYG'),
       (12, 1, 'Springboot', 'https://drive.google.com/uc?export=view&id=1m86TNk6oXuNsPHG0kaq2HrrW0zf94cM3', 'https://drive.google.com/uc?export=view&id=11pU-DUr7rt70mK-5sEqs3npZOpK3ZueD'),
       (13, 1, 'NodeJS', 'https://drive.google.com/uc?export=view&id=1BcTvrWJeLL79olAjsbudSLLnIPFN6UvN', 'https://drive.google.com/uc?export=view&id=1PPzUqQtpvT-08MyV5KvfMbD6EoKWiO9n'),
       (14, 1, 'PHP', 'https://drive.google.com/uc?export=view&id=17m74_iFvlcLkXqV3yOEJKwcyyPzEa4vP', 'https://drive.google.com/uc?export=view&id='),
       (15, 1, 'Laravel', 'https://drive.google.com/uc?export=view&id=1nkx-qvsY993NUmD0Bhb5xP6WsypbJ5dt', 'https://drive.google.com/uc?export=view&id='),
       (16, 1, 'Python', 'https://drive.google.com/uc?export=view&id=1n0vsGj6Op2t68oGqZ3e9TallMJashRwU', 'https://drive.google.com/uc?export=view&id=1HHJgHNLfzI5QbkhD7oFUWWAWbd-EKRj8'),
       (17, 1, 'Django', 'https://drive.google.com/uc?export=view&id=1OcqJy31xX8laR88QDMJLioTTiWZhjw_y', 'https://drive.google.com/uc?export=view&id='),
       (18, 1, 'React', 'https://drive.google.com/uc?export=view&id=1WFFi-KHtrPOrXK6LzQYwp7nV6DKS1_jI', 'https://drive.google.com/uc?export=view&id=1iVMGKAGFhAkwBsYgtXRiEI_f_7CBckQp'),
       (19, 1, 'SQL', 'https://drive.google.com/uc?export=view&id=1LcA7uyhI4s_Ukt7u8fBjVFAyy3PkLy8R', 'https://drive.google.com/uc?export=view&id='),
       (20, 1, 'VueJS', 'https://drive.google.com/uc?export=view&id=1CQic3ktO5gfOLqm_Gw6Xm0fxpx0MsHyM', 'https://drive.google.com/uc?export=view&id=1-WV_ew89IeFhZklb6NVqtWlPgKUwtsUq'),
       (21, 1, 'Flutter', 'https://drive.google.com/uc?export=view&id=1gGQy2yRfUbI830Q9pKO0g6Bwg_geJv4f', 'https://drive.google.com/uc?export=view&id=1dzE2YMO_0i7-cn5EqjGc1fCkDyI31JYa'),
       (22, 1, 'Typescript', 'https://drive.google.com/uc?export=view&id=1CmEt2vFkPHOSNCb7GgngtXF4QbBxahAa', 'https://drive.google.com/uc?export=view&id=1JJAHU_-Ztj4UdzQHFn12FsaX7jIQtzsr'),
       (23, 1, 'Golang', 'https://drive.google.com/uc?export=view&id=1TRkk09S2rkjQDIl5OcWANaKiztQ2wMKN', 'https://drive.google.com/uc?export=view&id=1OiPZ1Rj_nKaEprcPAurPBgyCFUiQ2bXM'),
       (24, 1, 'Android', 'https://drive.google.com/uc?export=view&id=1AZ6hEwDEGz24PJ_gDyxNDBF8sieZTMh1', 'https://drive.google.com/uc?export=view&id=1lWSwb0if3zvriC1KyLF8Q1gxaCiBCCGo')
;

INSERT INTO documentation.commands(name, id_technology, description)
VALUES
    # Cisco
    ('show running-config', 1, 'Affiche la configuration en cours d''exécution de l''équipement'),
    ('show startup-config', 1, 'Affiche la configuration de démarrage de l''équipement'),
    ('show interfaces', 1, 'Affiche les informations sur les interfaces réseau de l''équipement'),
    ('show ip route', 1, 'Affiche la table de routage IP de l''équipement'),
    ('show ip protocols', 1, 'Affiche les protocoles de routage configurés sur l''équipement'),
    ('show mac-address-table', 1, 'Affiche la table de traduction d''adresse MAC de l''équipement'),
    ('show vlan', 1, 'Affiche les informations sur les VLAN de l''équipement'),
    ('show spanning-tree', 1, 'Affiche les informations sur l''arbre étendu de l''équipement'),
    ('show access-lists', 1, 'Affiche les listes d''accès de l''équipement'),
    ('show ip access-lists', 1, 'Affiche les listes d''accès IP de l''équipement'),
    ('show ip nat translations', 1, 'Affiche les traductions NAT en cours sur l''équipement'),
    ('show ip dhcp pool', 1, 'Affiche les informations sur les pools DHCP de l''équipement'),
    ('show ip dhcp bindings', 1, 'Affiche les associations DHCP en cours sur l''équipement'),
    ('show ip arp', 1, 'Affiche la table ARP de l''équipement'),
    ('show logging', 1, 'Affiche les informations de journalisation de l''équipement'),

    # Docker
    ('docker run', 2, 'Exécute une image Docker en créant et en démarrant un container'),
    ('docker start', 2, 'Démarre un container arrêté'),
    ('docker stop', 2, 'Arrête un container en cours d''exécution'),
    ('docker kill', 2, 'Arrête brutalement un container en cours d''exécution'),
    ('docker rm', 2, 'Supprime un ou plusieurs containers'),
    ('docker rmi', 2, 'Supprime une ou plusieurs images'),
    ('docker pull', 2, 'Télécharge une image depuis un registry'),
    ('docker push', 2, 'Envoie une image vers un registry'),
    ('docker build', 2, 'Crée une image à partir d''un fichier Dockerfile'),
    ('docker logs', 2, 'Affiche les logs d''un container'),
    ('docker exec', 2, 'Exécute une commande dans un container en cours d''exécution'),
    ('docker search', 2, 'Cherche une image sur un registry'),
    ('docker login', 2, 'Se connecte à un registry'),
    ('docker tag', 2, 'Attribue un nom à une image'),

    # Kubernetes
    ('kubectl get', 3, 'Affiche un ou plusieurs objets Kubernetes (pods, services, etc.)'),
    ('kubectl describe', 3, 'Affiche les détails d''un objet Kubernetes'),
    ('kubectl create', 3, 'Crée un nouvel objet Kubernetes à partir d''un fichier de définition'),
    ('kubectl apply', 3, 'Applique les modifications d''un objet Kubernetes à partir d''un fichier de définition'),
    ('kubectl delete', 3, 'Supprime un ou plusieurs objets Kubernetes'),
    ('kubectl logs', 3, 'Affiche les logs d''un pod'),
    ('kubectl exec', 3, 'Exécute une commande dans un pod'),
    ('kubectl attach', 3, 'Accède au terminal d''un pod'),
    ('kubectl port-forward', 3, 'Redirige un port local vers un port dans un pod'),
    ('kubectl scale', 3, 'Modifie le nombre de réplicas d''un déploiement'),
    ('kubectl rolling-update', 3,
     'Met à jour un déploiement en créant de nouveaux pods et en arrêtant les anciens de manière progressive'),
    ('kubectl rollout', 3, 'Affiche l''historique et les détails des mises à jour de déploiement'),
    ('kubectl config', 3, 'Gère la configuration de kubectl (changement de cluster, de namespace, etc.)'),

    # Linux
    ('ls', 4, 'Affiche le contenu d''un répertoire'),
    ('cd', 4, 'Change de répertoire'),
    ('mkdir', 4, 'Crée un répertoire'),
    ('touch', 4, 'Crée un fichier vide'),
    ('cp', 4, 'Copie un fichier ou un répertoire'),
    ('mv', 4, 'Déplace un fichier ou un répertoire'),
    ('rm', 4, 'Supprime un fichier ou un répertoire'),
    ('man', 4, 'Affiche le manuel d''une commande'),
    ('sudo', 4, 'Exécute une commande en tant qu''administrateur'),
    ('apt-get', 4, 'Gère les paquets du système (installation, mise à jour, suppression)'),
    ('grep', 4, 'Cherche un motif dans un fichier ou la sortie d''une commande'),
    ('find', 4, 'Cherche des fichiers sur le système de fichiers'),
    ('top', 4, 'Affiche les processus en cours d''exécution et leur utilisation des ressources'),
    ('df', 4, 'Affiche l''utilisation de l''espace disque'),
    ('du', 4, 'Affiche l''utilisation de l''espace disque par répertoire'),
    ('cat', 4, 'Affiche le contenu d''un fichier'),
    ('less', 4, 'Affiche le contenu d''un fichier par pages'),
    ('head', 4, 'Affiche les premières lignes d''un fichier'),
    ('tail', 4, 'Affiche les dernières lignes d''un fichier'),
    ('wc', 4, 'Affiche le nombre de lignes, de mots et de caractères d''un fichier'),
    ('sort', 4, 'Trie le contenu d''un fichier'),
    ('tee', 4, 'Affiche la sortie d''une commande et l''envoie dans un fichier'),
    ('cut', 4, 'Extrait des colonnes d''un fichier'),
    ('paste', 4, 'Colle des fichiers côte à côte'),
    ('sed', 4, 'Modifie le contenu d''un fichier ou de la sortie d''une commande'),
    ('awk', 4, 'Traite les données d''un fichier ou de la sortie d''une commande'),

    # Nmap
    ('nmap -sS [target]', 5, 'Effectue un scan SYN complet sur la cible spécifiée'),
    ('nmap -sT [target]', 5, 'Effectue un scan TCP connect sur la cible spécifiée'),
    ('nmap -sU [target]', 5, 'Effectue un scan UDP sur la cible spécifiée'),
    ('nmap -sV [target]', 5, 'Essaie de déterminer les versions des services sur la cible spécifiée'),
    ('nmap -O [target]', 5, 'Essaie de déterminer le système d''exploitation sur la cible spécifiée'),
    ('nmap -p [port(s)] [target]', 5, 'Scan les port(s) spécifié(s) sur la cible spécifiée'),
    ('nmap -A [target]', 5, 'Active toutes les options d''analyse de service et de version sur la cible spécifiée'),
    ('nmap -n [target]', 5, 'Désactive la résolution de nom d''hôte sur la cible spécifiée'),
    ('nmap --top-ports [number] [target]', 5, 'Scan les [number] ports les plus utilisés sur la cible spécifiée'),
    ('nmap -iL [input file]', 5, 'Scan les cibles spécifiées dans le fichier d''entrée'),

    # Windows Server
    ('netstat', 6, 'Affiche les connexions réseau et les ports en écoute'),
    ('ipconfig', 6, 'Affiche les informations de configuration IP de l''ordinateur'),
    ('nslookup', 6, 'Interroge un serveur DNS pour résoudre un nom d''hôte en adresse IP ou inversement'),
    ('tracert', 6, 'Affiche le chemin suivi par un paquet de données à travers les réseaux'),
    ('ping', 6, 'Envoie des paquets de données à un hôte et affiche le temps de réponse'),
    ('tasklist', 6, 'Affiche la liste des processus en cours d''exécution'),
    ('taskkill', 6, 'Arrête un processus'),
    ('driverquery', 6, 'Affiche la liste des pilotes installés sur l''ordinateur'),
    ('net user', 6, 'Gère les comptes d''utilisateur du domaine'),
    ('net group', 6, 'Gère les groupes du domaine'),
    ('net localgroup', 6, 'Gère les groupes locaux'),
    ('net share', 6, 'Gère les partages réseau'),
    ('net session', 6, 'Affiche les sessions réseau'),
    ('net use', 6, 'Gère les connections aux partages réseau'),
    ('netstat -ano', 6, 'Affiche les ports en écoute et les processus associés'),
    ('net start', 6, 'Affiche ou démarre les services du système'),
    ('net stop', 6, 'Arrête les services du système'),
    ('sc', 6, 'Gère les services du système'),
    ('schtasks', 6, 'Gère les tâches planifiées'),
    ('reg', 6, 'Édite le registre de Windows'),
    ('sfc /scannow', 6, 'Analyse et remplace les fichiers système endommagés'),

    # Azure
    ('az login', 7, 'Se connecte à Azure'),
    ('az account', 7, 'Gère les informations de compte et de souscription'),
    ('az group', 7, 'Gère les groupes de ressources'),
    ('az vm', 7, 'Gère les machines virtuelles'),
    ('az vm create', 7, 'Crée une machine virtuelle'),
    ('az vm start', 7, 'Démarre une machine virtuelle'),
    ('az vm stop', 7, 'Arrête une machine virtuelle'),
    ('az vm restart', 7, 'Redémarre une machine virtuelle'),
    ('az vm delete', 7, 'Supprime une machine virtuelle'),
    ('az vm image', 7, 'Gère les images de machine virtuelle'),
    ('az storage account', 7, 'Gère les comptes de stockage'),
    ('az network', 7, 'Gère les ressources de réseau'),
    ('az webapp', 7, 'Gère les applications Web'),
    ('az functionapp', 7, 'Gère les applications de fonction'),
    ('az cdn', 7, 'Gère les réseaux de diffusion de contenu'),
    ('az cosmosdb', 7, 'Gère les bases de données Cosmos'),
    ('az sql', 7, 'Gère les bases de données SQL'),

    # Angular
    ('ng new', 8, 'Crée un nouveau projet Angular.'),
    ('ng generate component', 8, 'Génère un nouveau composant Angular.'),
    ('ng generate service', 8, 'Génère un nouveau service Angular.'),
    ('ng generate directive', 8, 'Génère une nouvelle directive Angular.'),
    ('ng generate module', 8, 'Génère un nouveau module Angular.'),
    ('ng build', 8, 'Compile l''application Angular en un ensemble de fichiers JavaScript pour le déploiement.'),
    ('ng serve', 8, 'Démarre le serveur de développement pour l''application Angular.'),
    ('ng test', 8, 'Exécute les tests unitaires pour l''application Angular.'),
    ('ng lint', 8, 'Analyse le code pour détecter les erreurs de syntaxe et les pratiques de codage non recommandées.'),
    ('ng deploy', 8, 'Déploie l''application Angular sur une plateforme d''hébergement.'),

    # C-sharp
    ('dotnet new', 9, 'Crée un nouveau projet C#.'),
    ('dotnet run', 9, 'Exécute l''application C#.'),
    ('dotnet build', 9, 'Compile l''application C# en un ensemble de fichiers exécutables.'),
    ('dotnet publish', 9, 'Publie l''application C# sous forme de fichiers exécutables et de fichiers de dépendances.'),
    ('dotnet test', 9, 'Exécute les tests unitaires pour l''application C#.'),
    ('dotnet restore', 9, 'Restaure les packages NuGet pour l''application C#.'),
    ('dotnet add package', 9, 'Ajoute un package NuGet à l''application C#.'),
    ('dotnet remove package', 9, 'Supprime un package NuGet de l''application C#.'),
    ('dotnet watch run', 9,
     'Démarre le serveur de développement pour l''application C# et surveille les modifications du code source.'),
    ('dotnet ef migrations add', 9, 'Ajoute une migration à la base de données pour l''application C#.'),

    # Javascript
    ('npm init ', 10, 'Initialise un nouveau projet JavaScript et crée un fichier package.json.'),
    ('npm install', 10, 'Installe les dépendances pour le projet JavaScript à partir du fichier package.json.'),
    ('npm start', 10, 'Démarre le serveur de développement pour le projet JavaScript.'),
    ('npm run build', 10, 'Compile le projet JavaScript en un ensemble de fichiers pour le déploiement.'),
    ('npm test', 10, 'Exécute les tests unitaires pour le projet JavaScript.'),
    ('npm run lint', 10,
     'Analyse le code pour détecter les erreurs de syntaxe et les pratiques de codage non recommandées.'),
    ('npm run watch', 10,
     'Surveille les modifications du code source et recompile automatiquement le projet JavaScript.'),
    ('npm install -g', 10, 'Installe un package JavaScript global sur votre système.'),
    ('npm update', 10, 'Met à jour les packages JavaScript dans le fichier package.json.'),
    ('npm uninstall ', 10, 'Désinstalle un package JavaScript du projet.'),

    # Java
    ('javac', 11, 'Compile le code source Java en un ensemble de fichiers de classes Java.'),
    ('java', 11, 'Exécute le programme Java à partir des fichiers de classes Java générés.'),
    ('javadoc', 11, 'Génère une documentation pour les classes Java à partir du code source.'),
    ('jar', 11, 'Crée une archive JAR à partir des fichiers de classes Java.'),
    ('jdb', 11, 'Démarre le débogueur Java pour déboguer le code source Java.'),
    ('jps', 11, 'Affiche les processus Java en cours d''exécution sur la machine.'),
    ('jstack', 11, ' Affiche la pile d''appels pour un processus Java.'),
    ('jstat', 11, 'Affiche les statistiques de performance pour un processus Java.'),
    ('jmap', 11, 'Affiche une carte de mémoire pour un processus Java.'),
    ('javap', 11, 'Affiche les informations de décompilation pour les fichiers de classes Java.'),

    # Springboot
    ('spring init', 12,
     'Initialise un nouveau projet Spring Boot et crée un fichier pom.xml ou build.gradle pour gérer les dépendances.'),
    ('mvn spring-boot:run', 12, 'Démarre le serveur de développement Spring Boot pour l''application.'),
    ('mvn package', 12,
     'Compile l''application Spring Boot en un ensemble de fichiers exécutables pour le déploiement.'),
    ('mvn spring-boot:run -Dspring.profiles.active=dev', 12,
     'Démarre le serveur de développement Spring Boot avec le profil dev activé.'),
    ('mvn clean', 12, 'Nettoie les fichiers générés précédemment dans le dossier de destination.'),
    ('mvn install', 12,
     'Installe l''application Spring Boot dans le référentiel local pour une utilisation ultérieure.'),
    ('mvn spring-boot:build-image', 12, 'Crée une image Docker pour l''application Spring Boot.'),
    ('mvn spring-boot:start', 12, 'Démarre l''application Spring Boot comme un processus de fond.'),
    ('mvn spring-boot:stop', 12, 'Arrête l''application Spring Boot en cours d''exécution.'),
    ('mvn spring-boot:help', 12, 'Affiche l''aide pour les commandes Spring Boot disponibles avec Maven.'),


    # NodeJS
    ('npm init', 13, 'Initialise un nouveau projet Node.js et crée un fichier package.json.'),
    ('npm install', 13, 'Installe les dépendances pour le projet Node.js à partir du fichier package.json.'),
    ('node app.js', 13, 'Exécute l''application Node.js à partir du fichier app.js.'),
    ('npm start', 13, 'Démarre le serveur de développement pour le projet Node.js.'),
    ('npm run build', 13, 'Compile le projet Node.js en un ensemble de fichiers pour le déploiement.'),
    ('npm test', 13, 'Exécute les tests unitaires pour le projet Node.js.'),
    ('npm run lint', 13,
     'Analyse le code pour détecter les erreurs de syntaxe et les pratiques de codage non recommandées.'),
    ('npm run watch', 13, 'Surveille les modifications du code source et recompile automatiquement le projet Node.js.'),
    ('npm install -g', 13, 'Installe un package Node.js global sur votre système.'),
    ('npm update', 13, 'Met à jour les packages Node.js dans le fichier package.json.'),

    # PHP
    ('php -S localhost:8000', 14, 'Démarre le serveur de développement PHP sur le port 8000.'),
    ('php -v', 14, 'Affiche la version de PHP installée sur votre système.'),
    ('php -m', 14, 'Affiche tous les modules PHP installés sur votre système.'),
    ('php -i', 14, 'Affiche la configuration PHP installée sur votre système.'),
    ('composer init', 14,
     'Initialise un nouveau projet PHP et crée un fichier composer.json pour gérer les dépendances.'),
    ('composer install', 14, 'Installe les dépendances pour le projet PHP à partir du fichier composer.json.'),
    ('composer update', 14, 'Met à jour les dépendances pour le projet PHP à partir du fichier composer.json.'),
    ('phpunit', 14, 'Exécute les tests unitaires pour le projet PHP.'),
    ('php artisan serve', 14, 'Démarre le serveur de développement Laravel pour l''application.'),
    ('php artisan make:controller', 14, 'Génère un nouveau contrôleur pour l''application Laravel.'),

    # Laravel
    ('composer create-project --prefer-dist laravel/laravel', 15,
     'Initialise un nouveau projet Laravel et crée une structure de base pour l''application.'),
    ('php artisan serve', 15, 'Démarre le serveur de développement Laravel pour l''application.'),
    ('php artisan make:model', 15, 'Génère un nouveau modèle pour l''application Laravel.'),
    ('php artisan make:migration', 15,
     'Génère une nouvelle migration pour la base de données de l''application Laravel.'),
    ('php artisan make:controller', 15, 'Génère un nouveau contrôleur pour l''application Laravel.'),
    ('php artisan make:middleware', 15, 'Génère un nouveau middleware pour l''application Laravel.'),
    ('php artisan migrate', 15, 'Exécute les migrations de base de données pour l''application Laravel.'),
    ('php artisan tinker ', 15,
     'Ouvre un REPL interactif pour l''application Laravel pour exécuter du code PHP et interagir avec la base de données.'),
    ('php artisan queue:work', 15, 'Exécute la file d''attente pour l''application Laravel.'),
    ('php artisan route:list', 15, 'Affiche la liste des routes définies pour l''application Laravel.'),

    # Python
    ('python', 16, 'Lance l''interpréteur Python en mode interactif.'),
    ('python fichier.py', 16, 'Exécute un script Python stocké dans un fichier.'),
    ('pip install package', 16, 'Installe un package Python à partir du répertoire de packages Python.'),
    ('pip uninstall package', 16, 'Désinstalle un package Python.'),
    ('pip freeze', 16, 'Affiche une liste de tous les packages Python installés sur le système.'),
    ('virtualenv env', 16, 'Crée un nouvel environnement virtuel Python appelé "env".'),
    ('source env/bin/activate', 16, 'Active l''environnement virtuel "env".'),
    ('python manage.py runserver', 16, 'Démarre le serveur de développement Django pour l''application Python.'),
    ('python manage.py migrate', 16, 'Exécute les migrations de base de données pour l''application Django.'),
    ('python manage.py createsuperuser', 16, 'Crée un super utilisateur pour l''application Django.'),

    # Django
    ('django-admin startproject nom_projet', 17,
     'Initialise un nouveau projet Django et crée une structure de base pour l''application.'),
    ('python manage.py runserver', 17, 'Démarre le serveur de développement Django pour l''application Python.'),
    ('python manage.py startapp nom_app', 17, 'Crée une nouvelle application Django dans le projet.'),
    ('python manage.py migrate', 17, 'Exécute les migrations de base de données pour l''application Django.'),
    ('python manage.py createsuperuser', 17, 'Crée un super utilisateur pour l''application Django.'),
    ('python manage.py makemigrations', 17,
     'Génère un nouveau fichier de migration pour la base de données de l''application Django.'),
    ('python manage.py migrate --fake', 17,
     'Marque une migration comme déjà exécutée sans exécuter réellement la migration.'),
    ('python manage.py shell', 17,
     'Ouvre une coquille Python interactive pour l''application Django pour exécuter du code Python et interagir avec la base de données.'),
    ('python manage.py collectstatic', 17,
     'Collecte tous les fichiers statiques de l''application dans un seul répertoire pour le déploiement.'),
    ('python manage.py test', 17, 'Exécute les tests pour l''application Django.'),

    # React
    ('npx create-react-app nom_projet', 18,
     'Initialise un nouveau projet React et crée une structure de base pour l''application.'),
    ('npm start', 18, 'Démarre le serveur de développement React pour l''application.'),
    ('npm run build', 18, 'Construit l''application React pour la production.'),
    ('npm test', 18, 'Exécute les tests pour l''application React.'),
    ('npm install package', 18, 'Installe un package React à partir du répertoire de packages NPM.'),
    ('npm uninstall package', 18, 'Désinstalle un package React.'),
    ('npm update package', 18, 'Met à jour un package React.'),
    ('npm audit', 18, 'Vérifie les dépendances de sécurité de l''application React.'),
    ('npm run eject', 18, 'Extrait la configuration de build pour l''application React.'),
    ('npm install -g json-server', 18, 'Installe le serveur JSON pour l''application React.'),

    # SQL
    ('SELECT', 19, 'Récupère des données à partir d''une ou plusieurs tables.'),
    ('FROM', 19, 'Spécifie la ou les tables à partir desquelles récupérer les données.'),
    ('WHERE', 19, 'Filtre les résultats en fonction d''une condition spécifiée.'),
    ('GROUP BY', 19, 'Groupe les résultats par une ou plusieurs colonnes.'),
    ('HAVING', 19, 'Filtre les résultats de groupe en fonction d''une condition spécifiée.'),
    ('ORDER BY', 19, 'Trie les résultats par une ou plusieurs colonnes.'),
    ('JOIN', 19, 'Combine des données à partir de deux ou plusieurs tables en fonction d''une condition de jointure.'),
    ('UNION', 19, 'Combine les résultats de deux ou plusieurs requêtes SELECT distinctes.'),
    ('INSERT INTO', 19, 'Ajoute une nouvelle ligne à une table.'),
    ('UPDATE', 19, 'Modifie les données d''une ou plusieurs lignes dans une table.'),
    ('DELETE', 19, 'Supprime une ou plusieurs lignes d''une table.'),

    # VueJS
    ('vue create nom_projet', 20,
     'Initialise un nouveau projet Vue.js et crée une structure de base pour l''application.'),
    ('npm run serve', 20, 'Démarre le serveur de développement Vue.js pour l''application.'),
    ('npm run build', 20, 'Construit l''application Vue.js pour la production.'),
    ('npm run test', 20, 'Exécute les tests pour l''application Vue.js.'),
    ('vue add package', 20, 'Ajoute un package Vue.js à l''application.'),
    ('vue remove package', 20, 'Supprime un package Vue.js de l''application.'),
    ('vue inspect', 20, 'Inspecte les dépendances et les configurations de l''application Vue.js.'),
    ('vue ui', 20, 'Ouvre une interface utilisateur web pour gérer les projets et les plugins Vue.js.'),
    ('vue serve fichier.vue', 20, 'Exécute un fichier Vue.js isolé dans un serveur de développement.'),
    ('vue init webpack nom_projet', 20, 'Initialise un nouveau projet Vue.js avec le modèle de configuration Webpack.'),

    # Flutter
    ('flutter create nom_projet', 21,
     'Initialise un nouveau projet Flutter et crée une structure de base pour l''application.'),
    ('flutter run', 21, 'Démarre l''application Flutter sur un périphérique émulé ou connecté.'),
    ('flutter build', 21, 'Construit l''application Flutter pour la production.'),
    ('flutter test', 21, 'Exécute les tests pour l''application Flutter.'),
    ('flutter packages get', 21, 'Installe les packages définis dans le fichier pubspec.yaml.'),
    ('flutter packages upgrade', 21, 'Met à jour les packages définis dans le fichier pubspec.yaml.'),
    ('flutter doctor', 21, 'Vérifie l''état de l''installation Flutter et de ses dépendances.'),
    ('flutter clean', 21, 'Efface les fichiers temporaires et les caches de l''application Flutter.'),
    ('flutter format fichier.dart', 21,
     'Formate le code source d''un fichier Dart selon les règles de formatage Flutter.'),
    ('flutter pub run build_runner build', 21,
     'Génère le code source pour les annotations et les génériques de build.'),

    # Typescript
    ('tsc', 22,
     'La commande principale pour compiler un fichier TypeScript en un fichier JavaScript. La commande peut être utilisée avec des options pour spécifier le fichier d''entrée, le fichier de sortie, etc.'),
    ('tsc --init', 22,
     'Créer un fichier de configuration TypeScript appelé tsconfig.json dans votre projet. Ce fichier contient des paramètres qui seront utilisés lors de la compilation.'),
    ('tsc --watch', 22,
     'Compiler automatiquement votre projet à chaque fois que vous apportez des modifications à votre code TypeScript.'),
    ('npm install typescript', 22, 'Installer TypeScript localement dans votre projet.'),
    ('npm install -g typescript', 22, 'Installer TypeScript globalement sur votre système.'),
    ('npm install @types/package-name', 22, 'Installer les types de définition pour un package JavaScript spécifique.'),
    ('tsc --help', 22, 'Afficher une liste complète des options disponibles pour la commande tsc.'),
    ('ts-node', 22, 'Exécuter des fichiers TypeScript directement sans avoir à les compiler au préalable.'),
    ('eslint', 22, 'Exécuter des analyses statiques sur votre code TypeScript pour détecter les erreurs potentielles.'),
    ('jest', 22, 'Exécuter des tests unitaires sur votre code TypeScript.'),

    # Golang
    ('go build', 23, 'Compiler votre code Go en un exécutable binaire.'),
    ('go run', 23, 'Compiler et exécute votre code Go en une seule étape'),
    ('go test', 23, 'Exécuter les tests unitaires dans votre projet Go.'),
    ('go get', 23, 'Installer des packages Go depuis des dépôts distants.'),
    ('go mod init', 23, 'Initialiser un nouveau module Go.'),
    ('go mod tidy', 23, 'Supprimer les packages inutilisés et mettre à jour les dépendances du module.'),
    ('go mod vendor', 23,
     'Copier les packages dépendants dans un répertoire vendor, ce qui permet de les inclure avec votre code source.'),
    ('go vet', 23, 'Exécuter des analyses statiques sur votre code Go pour détecter les erreurs potentielles.'),
    ('go fmt', 23, 'Formater automatiquement votre code Go selon les conventions de formatage officielles.'),
    ('go doc', 23, 'Afficher la documentation pour les packages Go installés localement.'),

    # Android
    ('./gradlew assemble', 24, 'Compiler votre projet Android en un fichier APK.'),
    ('./gradlew installDebug', 24, 'Installer l''APK de débogage sur votre appareil Android.'),
    ('./gradlew test', 24, 'Exécuter les tests unitaires dans votre projet Android.'),
    ('./gradlew lint', 24,
     'Exécuter des analyses statiques sur votre code Android pour détecter les erreurs potentielles.'),
    ('./gradlew clean', 24, 'Supprimer les fichiers de compilation et de construction temporaires.'),
    ('./gradlew build', 24, 'Compiler et assembler votre projet Android en un fichier APK.'),
    ('adb', 24, 'Outil de ligne de commande Android Debug Bridge pour communiquer avec votre appareil Android.'),
    ('android avd', 24, 'Outil pour créer, gérer et lancer des émulateurs Android.'),
    ('sdkmanager', 24, 'Gérer les packages SDK Android installés sur votre système.'),
    ('javadoc', 24, 'Générer la documentation Java pour votre code source Android.')
;

INSERT INTO documentation.articles
VALUES (1, 1, 'Presentation Cisco', '<h2>Introduction</h2>

<p>Cisco Systems, Inc. est une entreprise américaine spécialisée dans la technologie de l''information. Elle est connue
    pour ses équipements de réseau, notamment ses routeurs et commutateurs de réseau, qui sont utilisés dans de
    nombreuses entreprises et organisations à travers le monde.</p>

<h2>Historique de Cisco</h2>

<p>Cisco a été fondée en 1984 par Leonard Bosack et Sandy Lerner. L''entreprise s''est rapidement imposée sur le marché
    des équipements de réseau et a été l''un des principaux acteurs de l''explosion de l''Internet au début des années
    1990. Aujourd''hui, Cisco est l''une des plus grandes entreprises de technologie de l''information au monde.</p>

<h2>Produits et services de Cisco</h2>

<p>Cisco propose une large gamme de produits et de services de réseau, allant des routeurs et commutateurs aux systèmes
    de gestion de réseau et de sécurité. L''entreprise propose également des solutions de collaboration, de stockage de
    données et de virtualisation de réseau.</p>

<h2>Importance de Cisco</h2>

<p>Cisco est un acteur majeur dans le domaine de la technologie de l''information et est particulièrement présent dans le
    monde des réseaux. Ses équipements sont utilisés par de nombreuses entreprises et organisations à travers le monde
    et sont considérés comme étant fiables et de qualité.</p>

<h2>Certifications Cisco</h2>

<p>Cisco propose une gamme de certifications professionnelles reconnues dans le domaine de la technologie de
    l''information. Ces certifications permettent aux professionnels de démontrer leurs compétences et leur expertise en
    matière de réseaux et de technologie de l''information. Les certifications Cisco sont très prisées par les employeurs
    et peuvent être un atout important pour les professionnels souhaitant évoluer dans leur carrière.</p>
'),
       (2, 2, 'Presentation Docker', '
<h2>Introduction</h2>

<p>Docker est un logiciel libre qui permet la création et l''exécution de conteneurs. Un conteneur est un environnement
    isolé qui permet de déployer une application et ses dépendances de manière autonome sur n''importe quel
    ordinateur. Les conteneurs permettent de cloisonner des environnements au niveau de l''OS, de manière transportable. Ils sont
    basés sur la technologie de virtualisation Linux LXC (Linux Containers).</p>

<h2>Pourquoi utiliser Docker ?</h2>

<ul>
    <li>Facilite le déploiement d''applications : pas besoin de s''inquiéter des différences d''environnement sur les
        différents ordinateurs sur lesquels l''application sera déployée.
    </li>
    <li>Améliore la productivité : les développeurs peuvent se concentrer sur leur code sans avoir à configurer leur
        environnement de développement.
    </li>
    <li>Favorise la collaboration : les conteneurs sont faciles à partager avec d''autres membres de l''équipe.</li>
</ul>

<h2>Comment utiliser Docker ?</h2>

<p>Pour utiliser Docker, il faut d''abord <a href="https://docs.docker.com/engine/install/">installer Docker</a> sur
    l''ordinateur

<h2>Ensuite, voici quelques commandes de base pour manipuler les conteneurs :</h2>
<ul>
  <li>docker run : exécute une image Docker en créant et en démarrant un conteneur.</li>
  <li>docker start : démarre un conteneur arrêté.</li>
  <li>docker stop : arrête un conteneur en cours d''exécution.</li>
  <li>docker kill : arrête brutalement un conteneur en cours d''exécution.</li>
  <li>docker rm : supprime un ou plusieurs conteneurs.</li>
</ul>

<h2>Où trouver des images Docker ?</h2>

<p>Il existe plusieurs registries (banques d''images) où vous pouvez trouver des images prêtes à l''emploi :</p>
<ul>
  <li>Docker Hub : le registry par défaut de Docker.</li>
  <li>Quay : un registry privé géré par Red Hat.</li>
  <li>GitLab Container Registry : un registry intégré à GitLab.</li>
</ul>

<h2>Intérêt</h2>

<p>L''intérêt des conteneurs est de pouvoir faire tourner des environnements isolés les uns des autres dans des conteneurs, tout en se partageant le même noyau, par exemple le kernel de Linux.</p>

<h2>Avantages</h2>

<ul>
  <li>Virtualisation uniquement de l''environnement d''exécution (processeur, mémoire vive, système de fichiers)</li>
  <li>Pas de virtualisation de toute la machine, donc pas besoin de nouveau OS</li>
  <li>Plus léger qu''une machine virtuelle (VM)</li>
  <li>Permet aux développeurs de faire de la mise en production sans toucher aux infrastructures</li>
</ul>
<h2>Inconvénients</h2>
<ul>
  <li>Plus difficile et long à mettre en place</li>
  <li>Peut être "inutile" ou "trop complexe" pour des petites infrastructures</li>
</ul>'),
       (3, 3, 'Presentation Kubernetes', '<h2>Introduction</h2>

<p>Kubernetes est un système de gestion de conteneurs open source créé par Google. Il permet de déployer, de scaler et
    de gérer des applications conteneurisées sur un cluster de serveurs.</p>

<h2>Historique de Kubernetes</h2>

<p>Kubernetes a été open-sourcé par Google en 2014 et est devenu rapidement l''un des systèmes de gestion de conteneurs
    les plus populaires. Il est maintenant développé par la fondation Cloud Native Computing, qui regroupe de nombreuses
    entreprises et organisations du secteur de la technologie de l''information.</p>

<h2>Caractéristiques de Kubernetes</h2>

<p>Kubernetes permet de déployer, de scaler et de gérer des applications conteneurisées sur un cluster de serveurs. Il
    offre également de nombreuses fonctionnalités de gestion de la disponibilité, de la scalabilité et de la sécurité
    des applications. Kubernetes est conçu pour être facile à utiliser et à déployer, et est compatible avec de nombreux
    environnements de cloud et de virtualisation.</p>

<img src="https://drive.google.com/uc?export=view&id=1kR8MYmQQuMIf_XmAT1u2Xs0vclDnZL-l" style="margin-left: 30px;">

<p>Un cluster Kubernetes est un ensemble de nodes exécutant des applications conteneurisées. Ces applications sont
    regroupées dans un package comprenant l''application elle-même, ses dépendances et certains services nécessaires.</p>

<img src="https://drive.google.com/uc?export=view&id=13_jGO4VrK4SciM4f1yq2Y-laZQ9Jgx05" style="margin-left: 70px;">

<h2>Node</h2>

<p>Un node peut être un serveur physique ou virtuel, et peut être un master ou un node d''exécution.</p>

<img src="https://drive.google.com/uc?export=view&id=1hkqYD8UEYLZIuwDRhk2qYFHWsQr8IDnu" style="margin-left: 70px;">

<h2>Pods</h2>

<p>Un pod est un ensemble de conteneurs généralement liés, par exemple un serveur Wordpress et une base de données.</p>

<img src="https://drive.google.com/uc?export=view&id=1XWhyjrggJ3Nu1zA8fMCuQQtZS-AEqjd4" style="margin-left: 70px;">

<h2>Services</h2>

<p>Un service est une abstraction des pods, permettant d''éviter la communication par IP (qui peut être changeante dans
    le cas de conteneurs). Un service est accessible via une IP et un port fixe, qui redirigent vers un ou plusieurs
    pods.</p>

<h2>Volumes</h2>

<p>Les volumes sont des emplacements d''échange entre pods, qui peuvent être persistants ou non. Les volumes situés à
    l''intérieur de pods sont non persistants, tandis que ceux situés à l''extérieur le sont.</p>

<h2>Les déploiements</h2>

<p>Les déploiements sont des objets de gestion des déploiements permettant la création et la suppression de pods, ainsi
    que la gestion des paramètres de montée en charge (scaling).</p>

<h2>Namespaces</h2>

<p>Un namespace est un cluster virtuel, c''est-à-dire un sous-ensemble de services permettant de cloisonner les
    différentes parties d''une application dans Kubernetes.</p>

<h2>Utilisation de Kubernetes</h2>

<p>Kubernetes est souvent utilisé pour déployer et gérer des applications de microservices. Il est également couramment
    utilisé pour mettre en place des plateformes de développement et de test en continu, ainsi que pour implémenter des
    architectures de cloud hybrides et multicloud.</p>

<h2>Bénéfices de Kubernetes</h2>

<p>Kubernetes est un outil très utile pour les développeurs et les opérationnels souhaitant déployer et gérer des
    applications conteneurisées de manière efficace. Il permet de faciliter le déploiement et la gestion des
    applications, ainsi que de maximiser leur disponibilité et leur scalabilité.</p>

<img src="https://drive.google.com/uc?export=view&id=1oUSmW-VRkX4f4seJj6ALq5v3MrH0WtYE" style="margin-left: 70px;">
'),
       (4, 4, 'Presentation Linux', '<h2>Introduction</h2>

<p>Linux est un système d''exploitation open-source basé sur le noyau Unix. Il a été créé par Linus Torvalds en 1991 et
    est devenu très populaire pour ses performances, sa flexibilité et sa stabilité.</p>

<h2>Caractéristiques de Linux</h2>

<p>Linux est un système d''exploitation multi-tâches qui permet à plusieurs programmes de s''exécuter en même temps. Il
    est également portable, ce qui signifie qu''il peut être installé sur divers types de matériel. Linux offre également
    une grande sécurité grâce à ses fonctionnalités de contrôle d''accès et de gestion de la mémoire.</p>

<h2>Utilisation de Linux</h2>

<p>Linux est largement utilisé comme système d''exploitation serveur, mais il peut également être utilisé comme système
    d''exploitation de bureau. Il est aussi utilisé sur de nombreux appareils tels que les téléphones mobiles, les
    téléviseurs et les routeurs.</p>

<h2>Distributions de Linux</h2>

<p>Il existe de nombreuses distributions de Linux, chacune avec ses propres caractéristiques et fonctionnalités.
    Certaines distributions populaires incluent Ubuntu, Fedora et CentOS.</p>

<h2>Avantages de Linux</h2>

<p>Linux est un système d''exploitation stable et fiable qui offre une grande flexibilité et personnalisation. Il est
    également gratuit et dispose d''une large communauté de développeurs et d''utilisateurs qui contribuent au
    développement et à l''amélioration de Linux.</p>
'),
       (5, 5, 'Presentation Nmap', '<h2>Introduction</h2>

<p>nmap est un outil de scanner de réseau open source utilisé pour découvrir les hôtes et les services sur un réseau, ainsi que pour tester la sécurité de ces derniers. Il permet de savoir quels services sont en écoute sur quels ports et de déterminer les versions de ces services.</p>

<h2>Historique de nmap</h2>

<p>nmap a été développé par Fyodor Vaskovich en 1997 et est depuis devenue l''une des principales références dans le domaine du scanning de réseau. Elle est souvent utilisée par les administrateurs système et les professionnels de la sécurité pour évaluer la sécurité de leurs réseaux.</p>

<h2>Caractéristiques de nmap</h2>

<p>nmap possède de nombreuses fonctionnalités permettant de scanner les hôtes et les services sur un réseau. Elle permet notamment de découvrir les hôtes actifs sur un réseau, de détecter les ports ouverts et les services associés, ainsi que de déterminer les versions de ces services. Elle peut également être utilisée pour tester la sécurité des réseaux en effectuant des scans de vulnérabilité.</p>

<h2>Utilisation de nmap</h2>

<p>nmap peut être utilisée de différentes manières, en fonction des besoins de l''utilisateur. Elle peut être utilisée en ligne de commande ou à partir d''une interface graphique, et propose de nombreuses options permettant de personnaliser les scans. Elle est disponible sous Windows, Linux et macOS.</p>

<h2>Bénéfices de nmap</h2>

<p>nmap est un outil très utile pour les administrateurs système et les professionnels de la sécurité. Elle leur permet de découvrir et de surveiller les hôtes et les services sur un réseau, ainsi que de tester la sécurité de ces derniers. Elle est également très pratique pour diagnostiquer les problèmes de réseau et pour effectuer des audits de sécurité.</p>
'),
       (6, 6, 'Presentation Windows Server', '<h2>Introduction</h2>

<p>Windows Server est un système d''exploitation de Microsoft conçu pour les environnements de serveur. Il offre une
    large gamme de fonctionnalités pour gérer les réseaux d''entreprise, le stockage de données et les applications.</p>

<h2>Histoire de Windows Server</h2>

<p>Windows Server a été lancé pour la première fois en 1993 sous le nom de Windows NT 3.1. Depuis lors, de nouvelles
    versions ont été lancées tous les quelques années, chacune apportant de nouvelles fonctionnalités et améliorations.
    La dernière version en date est Windows Server 2019.</p>

<h2>Fonctionnalités de Windows Server</h2>

<p>Windows Server offre de nombreuses fonctionnalités pour les entreprises, notamment la gestion de l''active directory,
    le stockage en réseau, la virtualisation et la gestion des licences. Il dispose également de fonctionnalités de
    sécurité avancées et de contrôle d''accès pour protéger les données et les réseaux.</p>

<h2>Utilisation de Windows Server</h2>

<p>Windows Server est souvent utilisé comme système d''exploitation de serveur dans les entreprises de toutes tailles. Il
    peut être utilisé pour héberger des applications, des bases de données et d''autres services tels que le partage de
    fichiers et l''impression.</p>

<h2>Avantages de Windows Server</h2>

<p>Windows Server offre une grande compatibilité avec les autres produits de Microsoft, ce qui en fait un choix
    populaire pour les entreprises utilisant déjà d''autres produits de Microsoft. Il est également facile à utiliser et
    dispose de nombreuses fonctionnalités pour la gestion des réseaux d''entreprise.</p>
'),
       (7, 7, 'Presentation Azure', '<h2>Introduction</h2>
<p>Microsoft Azure est une plateforme de cloud computing qui offre une large gamme de services informatiques en ligne, tels que des machines virtuelles, du stockage, du réseautage, des bases de données, du développement d''applications, de l''analyse de données et de l''IA.</p>
<h2>Pourquoi utiliser Azure ?</h2>
<p>Azure permet aux développeurs de créer, déployer et gérer des applications et des services de manière rapide et économique, sans avoir à se soucier de l''infrastructure sous-jacente.</p>
<p>Azure est disponible dans de nombreux datacenters à travers le monde, ce qui permet aux utilisateurs de choisir l''emplacement le plus proche de leurs utilisateurs pour une meilleure performance.</p>
<h2>Quels outils de développement sont disponibles sur Azure ?</h2>
<p>Azure offre de nombreux outils de développement intégrés, tels que Visual Studio et GitHub, ainsi que des API et des bibliothèques pour de nombreux langages de programmation et frameworks populaires.</p>
<h2>Quels services de données sont disponibles sur Azure ?</h2>
<p>Azure propose de nombreux services de données, tels que Azure Cosmos DB et Azure SQL Database, qui permettent aux développeurs de stocker et de gérer facilement des données à grande échelle.</p>
<h2>Quels services de machine learning et d''IA sont disponibles sur Azure ?</h2>
<p>Azure est connu pour ses services de machine learning et de intelligence artificielle, tels que Azure Machine Learning et Azure Cognitive Services, qui permettent aux développeurs de créer facilement des applications de traitement du langage naturel, de reconnaissance de la parole et de reconnaissance d''image.</p>
<h2>En résumé</h2>
<p>En résumé, Microsoft Azure est une plateforme de cloud computing polyvalente et puissante qui offre un large éventail de services informatiques en ligne pour aider les développeurs à créer, déployer et gérer facilement des applications et des services de manière économique.</p>
'),
       (8, 8, 'Presentation Angular', '<h2>Introduction</h2>

<p>Angular est un framework open source de développement Web côté client créé par Google en 2010. Il est basé sur le
    langage de programmation JavaScript et permet de créer des applications Web dynamiques et riches en
    fonctionnalités.</p>

<h2>Caractéristiques d''Angular</h2>

<p>Angular est un framework complet qui inclut tout ce dont un développeur a besoin pour créer une application Web. Il
    utilise le modèle de vue-modèle-contrôleur (MVC) pour séparer la vue (l''interface utilisateur) du modèle (les
    données) et du contrôleur (la logique de l''application). Angular utilise également des composants pour structurer
    une application en petites parties réutilisables.</p>

<h2>Utilisation d''Angular</h2>

<p>Angular est principalement utilisé pour créer des applications Web dynamiques et riches en fonctionnalités. Il est
    souvent utilisé conjointement avec d''autres technologies Web telles que HTML, CSS et JavaScript.</p>

<h2>Bénéfices d''Angular</h2>

<p>Angular est un framework de développement Web populaire et largement utilisé. Il permet de créer des applications Web
    dynamiques de manière rapide et efficace, et dispose d''une grande communauté de développeurs qui contribuent à son
    développement et à sa documentation. En utilisant Angular, les développeurs peuvent également bénéficier de la
    structure MVC et des composants pour créer des applications Web organisées et réutilisables.</p>

<h2>Get Started</h2>

<pre><code class="language-javascript">import { Component } from ''@angular/core'';

    @Component({
      selector: ''app-root'',
      templateUrl: ''./app.component.html'',
      styleUrls: [''./app.component.css'']
    })
    export class AppComponent {
      title = ''mon-premier-projet'';
    }
    </code></pre>

<p>Ce code importe le composant de base d''Angular et définit un composant appelé "AppComponent" avec un titre de
    "mon-premier-projet". Le sélecteur "app-root" indique que ce composant sera utilisé comme racine de l''application et
    les templates et styles associés sont définis dans les fichiers de template et de style respectifs.</p>'),
       (9, 9, 'Presentation C-Sharp', '<h2>Introduction</h2>

<p>C# est un langage de programmation orienté objet développé par Microsoft. Il a été créé en 2000 et est utilisé
    principalement pour le développement d''applications Windows, mais peut également être utilisé pour le développement
    d''applications Web, mobile et de jeux vidéo.</p>

<h2>Caractéristiques de C-Sharp</h2>

<p>C# utilise une syntaxe de programmation similaire à d''autres langages tels que C++ et Java, et est basé sur le
    concept d''objets. Il prend en charge les fonctionnalités de programmation orientée objet telles que l''héritage, le
    polymorphisme et l''encapsulation. C# est également doté de nombreuses bibliothèques de classes prédéfinies qui
    facilitent le développement d''applications.</p>

<h2>Utilisation de C-Sharp</h2>

<p>C# est principalement utilisé pour le développement d''applications Windows, mais peut également être utilisé pour le
    développement d''applications Web, mobile et de jeux vidéo. Il est souvent utilisé conjointement avec d''autres
    technologies telles que .NET et ASP.NET.</p>

<h2>Bénéfices de C-Sharp</h2>

<p>C# est un langage de programmation populaire et largement utilisé pour le développement d''applications Windows. Il
    dispose d''une grande communauté de développeurs qui contribuent à son dével
'),
       (10, 10, 'Presentation Javascript', '<h2>Introduction</h2>

<p>JavaScript est l''un des langages de programmation les plus populaires utilisés pour développer des applications web interactives. Il est souvent utilisé en tandem avec HTML et CSS pour créer des pages web dynamiques.</p>

<h2>Caractéristiques de JavaScript</h2>

<p>JavaScript est un langage de programmation orienté objet qui permet aux développeurs de créer des applications web riches et interactives. Voici quelques-unes de ses caractéristiques clés:</p>

<ul>
  <li>Langage de script : JavaScript est un langage de script qui est interprété par le navigateur web. Il peut être utilisé pour ajouter des fonctionnalités dynamiques à une page web, telles que des animations, des effets de défilement, des changements de style et plus encore.</li>
  <li>Syntaxe similaire à Java : La syntaxe de JavaScript est similaire à celle de Java, ce qui facilite l''apprentissage pour les développeurs Java. Cependant, JavaScript est un langage plus flexible que Java et offre plus de fonctionnalités.</li>
  <li>Types de données dynamiques : Les variables en JavaScript peuvent être de différents types de données, tels que des nombres, des chaînes de caractères, des tableaux, des objets, etc. Les types de données peuvent également être modifiés dynamiquement, ce qui offre une grande flexibilité pour les développeurs.</li>
  <li>Bibliothèques et frameworks : JavaScript dispose d''une large gamme de bibliothèques et de frameworks, tels que React, Angular et Vue.js, qui facilitent le développement d''applications web. Ces outils offrent des fonctionnalités préconçues, ce qui permet aux développeurs de gagner du temps et d''améliorer la qualité de leur code.</li>
</ul>

<h2>Utilisations de JavaScript</h2>

<p>JavaScript est principalement utilisé pour développer des applications web, mais il peut également être utilisé pour créer des applications mobiles, des extensions de navigateur, des applications de bureau et plus encore. Voici quelques exemples d''utilisation de JavaScript:</p>

<ul>
  <li>Interaction utilisateur : JavaScript est utilisé pour ajouter des fonctionnalités interactives aux pages web, telles que des menus déroulants, des boutons cliquables, des diaporamas et plus encore.</li>
  <li>Validation de formulaire : JavaScript peut être utilisé pour valider les données entrées dans un formulaire, telles que la vérification d''adresses e-mail, la vérification des champs obligatoires et plus encore.</li>
  <li>Applications web dynamiques : JavaScript est utilisé pour créer des applications web dynamiques, telles que des cartes interactives, des applications de traitement de texte en ligne, des jeux en ligne et plus encore.</li>
  <li>Applications mobiles : JavaScript peut être utilisé pour créer des applications mobiles hybrides, qui sont des applications mobiles développées à l''aide de technologies web comme HTML, CSS et JavaScript.</li>
</ul>

<h2>Conclusion</h2>

<p>JavaScript est un langage de programmation puissant et flexible qui est largement utilisé pour développer des applications web interactives. Avec sa syntaxe similaire à Java, ses types de données dynamiques et ses bibliothèques et frameworks, JavaScript offre aux développeurs une grande flexibilité pour créer des applications web
'),
       (11, 11, 'Presentation Java', '<h2>Introduction</h2>

<p>Java est un langage de programmation orienté objet créé par Sun Microsystems (maintenant propriété d''Oracle) en 1995.
    Il est conçu pour être facile à apprendre et à utiliser, et est utilisé pour développer une large gamme
    d''applications, allant des applications de bureau aux applications mobiles en passant par les applications Web.</p>

<h2>Caractéristiques de Java</h2>

<p>Java est un langage de programmation interprété, ce qui signifie qu''il n''est pas nécessaire de le compiler avant de
    l''exécuter. Il est également indépendant de la plateforme, ce qui signifie qu''une application Java peut être
    exécutée sur n''importe quel système d''exploitation compatible. Java est également un langage de programmation
    orienté objet, ce qui signifie qu''il permet de définir et de manipuler des objets dans un programme.</p>

<h2>Utilisation de Java</h2>

<p>Java est utilisé pour développer une large gamme d''applications, allant des applications de bureau aux applications
    mobiles en passant par les applications Web. Il est également utilisé pour développer des applications Android et
    des jeux vidéo.</p>

<h2>Bénéfices de Java</h2>

<p>Java est un langage de programmation très populaire et largement utilisé dans le monde de l''informatique. Il est
    facile à apprendre et à utiliser, et est compatible avec de nombreuses plateformes. Java est également un langage de
    programmation stable et sécurisé, ce qui en fait un choix judicieux pour les développeurs professionnels.</p>'),
       (12, 12, 'Presentation Springboot', '<h2>Introduction</h2>

<p>Spring Boot est un framework open source de développement d''applications Java créé par Pivotal. Il vise à simplifier
    la création d''applications Java en offrant un ensemble de fonctionnalités prêtes à l''emploi, telles que l''injection
    de dépendances, le support de différentes bases de données et la gestion des erreurs.</p>

<h2>Caractéristiques de Spring Boot</h2>

<p>Spring Boot utilise le framework Spring pour offrir un ensemble de fonctionnalités de développement d''applications
    Java. Il permet de configurer facilement des applications à l''aide de fichiers de configuration, et offre un support
    intégré pour différentes bases de données et technologies de persistance de données. Spring Boot utilise également
    un système de démarrage rapide pour démarrer rapidement une application.</p>

<h2>Utilisation de Spring Boot</h2>

<p>Spring Boot est principalement utilisé pour créer des applications Java autonomes qui peuvent être déployées sur
    n''importe quel environnement. Il est souvent utilisé conjointement avec d''autres technologies Java telles que JPA,
    Hibernate et Spring MVC.</p>

<h2>Bénéfices de Spring Boot</h2>

<p>Spring Boot est un framework de développement d''applications Java populaire et largement utilisé. Il permet de créer
    des applications Java de manière rapide et efficace, et dispose d''une grande communauté de développeurs qui
    contribuent à son développement et à sa documentation. En utilisant Spring Boot, les développeurs peuvent également
    bénéficier de l''ensemble de fonctionnalités proposé par le framework Spring, ainsi que du système de démarrage
    rapide pour démarrer rapidement une application.</p>

<h2>Get Started</h2>

<pre><code>import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
@SpringBootApplication
public class MonPremierProjetApplication {
    public static void main(String[] args) {
    SpringApplication.run(MonPremierProjetApplication.class, args);
    }
}
</code></pre>

<p>Ce code définit une classe d''application Spring Boot appelée "MonPremierProjetApplication" avec la annotation <code>@SpringBootApplication</code>.
    La méthode <code>main</code> est utilisée pour lancer l''application en utilisant la méthode <code>SpringApplication.run</code>.
</p>'),
       (13, 13, 'Presentation NodeJS', '<h2>Introduction</h2>

<p>Node.js est un environnement d''exécution JavaScript côté serveur. Il permet d''exécuter du code JavaScript en dehors d''un navigateur Web, sur un serveur par exemple.</p>

<h2>Caractéristiques de Node.js</h2>

<p>Node.js utilise l''engine JavaScript V8 de Google, qui permet d''exécuter du code JavaScript de manière rapide et efficace. Node.js utilise également un modèle d''exécution asynchrone basé sur les évènements, ce qui le rend particulièrement adapté aux applications réseau à haut débit.</p>

<h2>Bénéfices de Node.js</h2>

<p>Node.js est un environnement d''exécution JavaScript populaire et largement utilisé. Il permet de créer des applications réseau performantes et scalable, et dispose d''une grande communauté de développeurs qui contribuent à son développement et à sa documentation. En utilisant Node.js, les développeurs peuvent également bénéficier de l''engine JavaScript V8 et du modèle d''exécution asynchrone pour créer des applications réseau rapides et efficaces.</p>

<h2>Utilisation de Node.js</h2>

<p>Node.js est principalement utilisé pour créer des applications réseau à haut débit et des API (interfaces de programmation d''applications). Il est souvent utilisé conjointement avec d''autres technologies Web telles que HTTP et TCP.</p>

<h2>Get Started</h2>

<pre><code>const http = require(''http'');

const hostname = ''127.0.0.1'';
const port = 3000;

const server = http.createServer((req, res) =&gt; {
  res.statusCode = 200;
  res.setHeader(''Content-Type'', ''text/plain'');
  res.end(''Hello World\n'');
});

server.listen(port, hostname, () =&gt; {
  console.log(`Server running at http://${hostname}:${port}/`);
});
</code></pre>

<p>Ce code crée un serveur HTTP qui écoute sur le port 3000 et affiche "Hello World" à chaque requête reçue.</p>
'),
       (14, 14, 'Presentation PHP', '<h2>Introduction</h2>
<p>PHP est un langage de programmation open source utilisé principalement pour le développement de sites web. Il est
    exécuté côté serveur et permet de générer du contenu dynamique en fonction des requêtes des utilisateurs.</p>

<h2>Histoire de PHP</h2>
<p>PHP (acronyme de "PHP: Hypertext Preprocessor") a été créé en 1994 par Rasmus Lerdorf. Au départ, il s''agissait d''un
    ensemble de scripts en Perl destinés à gérer les formulaires du site web de Lerdorf. PHP est rapidement devenu
    populaire en raison de sa simplicité et de sa flexibilité.</p>

<h2>Utilisation de PHP</h2>
<p>PHP peut être utilisé de différentes manières :</p>
<ul>
    <li>En combinaison avec le HTML dans les pages web</li>
    <li>Pour créer des scripts de commande</li>
    <li>Pour écrire des applications web complètes</li>
</ul>

<h2>Avantages de PHP</h2>

<ul>
    <li>PHP est open source et gratuit</li>
    <li>Il est compatible avec la plupart des serveurs web et systèmes d''exploitation</li>
    <li>Il est facile à apprendre et à utiliser</li>
    <li>De nombreuses librairies et frameworks sont disponibles pour étendre les fonctionnalités de PHP</li>
</ul>

<h2>Inconvénients de PHP</h2>

<ul>
    <li>PHP peut être moins performant que d''autres langages de programmation côté serveur</li>
    <li>La qualité du code peut varier en raison de la grande flexibilité offerte par le langage</li>
</ul>

<h2>Conclusion</h2>

<p>PHP est un langage de programmation largement utilisé pour le développement de sites web. Grâce à sa simplicité et à
    sa flexibilité, il est facile à apprendre et à utiliser, mais peut parfois être moins performant que d''autres
    langages.</p>'),
       (15, 15, 'Presentation Laravel', '<h2>Introduction</h2>

<p>Laravel est un framework PHP open-source utilisé pour le développement de sites web. Il a été créé en 2011 par Taylor Otwell.</p>

<h2>Avantages de Laravel</h2>

<ul>
    <li>Facilité d''utilisation grâce à une syntaxe claire et expressive</li>
    <li>Inclus un ORM (Object-Relational Mapping) pour une gestion simplifiée de la base de données</li>
    <li>Mises à jour fréquentes et documentations complètes</li>
    <li>Grande communauté active et soutien de la part de la fondation Laravel</li>
</ul>

<h2>Fonctionnalités de Laravel</h2>

<ul>
    <li>Système de routage avancé</li>
    <li>Gestion des formulaires et des validateurs</li>
    <li>Intégration de Blade, un moteur de template simple et efficace</li>
    <li>Gestion des sessions et des cookies</li>
    <li>Support de plusieurs bases de données et de migrations de bases de données</li>
    <li>Gestion des tâches planifiées et des commandes en arrière-plan</li>
    <li>Intégration de paquets tels que Cashier, Envoy, Horizon et Passport pour une expansion facile de l''application</li>
</ul>

<h2>Exemples d''utilisation de Laravel</h2>

<p>Laravel est souvent utilisé pour la création de sites web à fort traffic, de sites e-commerce et de systèmes de gestion de contenu (CMS). Quelques exemples populaires d''applications Laravel incluent:</p>

<ul>
    <li>Laravel Spark</li>
    <li>Laravel Cashier</li>
    <li>Laravel Nova</li>
    <li>Laravel Echo</li>
    <li>Laravel Horizon</li>
</ul>

<h1>Get Started</h1>

<p>Voici un exemple de code de base pour une application Laravel :</p>

<pre><code>&lt;?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        return view(''home'');
    }
}
</code></pre>

<p>Ce code définit un contrôleur de l''application appelé <code>HomeController</code>, qui contient une méthode <code>index</code> qui retourne la vue <code>home</code>. La vue <code>home</code> est un fichier HTML situé dans le répertoire <code>resources/views/</code>.</p>

<p>Ressources pour apprendre Laravel :</p>
<ul>
    <li>Documentation officielle de Laravel: <a href="https://laravel.com/docs">https://laravel.com/docs</a></li>
    <li>Tutoriels sur YouTube: <a href="https://www.youtube.com/watch?v=EU7PRmCpx-0&t=6s">https://www.youtube.com/watch?v=EU7PRmCpx-0&t=6s</a></li>
    <li>Livres sur Laravel: <a href="https://laravel.com/books">https://laravel.com/books</a></li>
    <li>Cours en ligne: <a href="https://laracasts.com/series/laravel-from-scratch-2018">https://laracasts.com/series/laravel-from-scratch-2018</a></li>
</ul>
'),
       (16, 16, 'Presentation Python', '<h2>Introduction</h2>

<p>Python est un langage de programmation open source créé en 1991 par Guido van Rossum. Il est conçu pour être facile à
    lire et à écrire, et est utilisé dans de nombreux domaines, tels que la science des données, le développement Web,
    la création de jeux et la programmation système.</p>

<h2>Caractéristiques de Python</h2>

<p>Python est un langage de programmation interprété, ce qui signifie qu''il n''est pas nécessaire de le compiler avant de
    l''exécuter. Il est également un langage de programmation orienté objet, ce qui signifie qu''il permet de définir et
    de manipuler des objets dans un programme. Python est connu pour être facile à lire et à écrire et pour sa
    communauté de développeurs active.</p>

<h2>Utilisation de Python</h2>

<p>Python est utilisé dans de nombreux domaines, tels que la science des données, le développement Web, la création de
    jeux et la programmation système. Il est également souvent utilisé comme langage de script pour automatiser des
    tâches courantes.</p>

<h2>Bénéfices de Python</h2>

<p>Python est un langage de programmation populaire et largement utilisé dans le monde de l''informatique. Il est facile
    à apprendre et à utiliser, et dispose d''une grande communauté de développeurs qui contribuent à son développement et
    à sa documentation. Python est également très polyvalent et peut être utilisé pour de nombreux projets différents.
    Il est également très populaire dans la communauté de la science des données en raison de sa puissance et de sa
    facilité d''utilisation pour l''analyse de données. Enfin, Python dispose d''une grande bibliothèque standard et de
    nombreuses bibliothèques tierces, ce qui en fait un choix judicieux pour les développeurs professionnels.</p>
'),
       (17, 17, 'Presentation Django', '<h2>Introduction</h2>

<p>Django est un framework de développement web open-source écrit en Python. Il vise à fournir une structure solide pour
    développer des applications web de manière rapide et sécurisée.</p>

<h2>Pourquoi utiliser Django ?</h2>

<p>Django offre de nombreux avantages pour le développement web :</p>

<ul>
    <li>Un modèle de données robuste et flexible</li>
    <li>Un moteur de templates puissant</li>
    <li>Une gestion des formulaires simplifiée</li>
    <li>Un système de gestion des utilisateurs et des permissions</li>
    <li>Un support pour les bases de données relationnelles et NoSQL</li>
    <li>Un système de gestion des URLs clairs et intuitifs</li>
    <li>Un mécanisme de traduction pour le développement de sites multilingues</li>
</ul>

<h2>Get Started</h2>

<p>Pour utiliser Django, vous devrez d''abord l''installer sur votre ordinateur. Vous pouvez le faire en utilisant pip, le
    gestionnaire de packages Python.</p>

<pre><code>pip install Django
</code></pre>

<p>Une fois Django installé, vous pouvez commencer à créer votre application. Django utilise le concept de projet et
    d''application pour organiser le code. Un projet peut contenir plusieurs applications, chacune étant dédiée à une
    fonctionnalité spécifique.</p>

<p>Pour créer un projet Django, vous pouvez utiliser la commande <code>django-admin startproject</code></p>

<pre><code>python manage.py startapp mon_app
</code></pre>

<p>Une fois votre projet et votre application créés, vous pouvez commencer à développer votre site web en ajoutant du
    code Python dans les fichiers de votre application.</p>

<p>Voici un exemple de code de base pour une application Django:</p>
'),
       (18, 18, 'Presentation React', '<h2>Introduction</h2>

<p>React est un framework open source de développement Web côté client créé par Facebook en 2013. Il est basé sur le
    langage de programmation JavaScript et permet de créer des interfaces utilisateur dynamiques et réactives.</p>

<h2>Caractéristiques de React</h2>

<p>React utilise une approche de développement basée sur les composants, qui permettent de structurer une interface
    utilisateur en petites parties réutilisables. Chaque composant est indépendant et peut être mis à jour de manière
    autonome sans affecter le reste de l''application. React utilise également un mécanisme de mise à jour de l''interface
    utilisateur appelé "reconnaissance de la modification", qui permet de mettre à jour uniquement les parties de
    l''interface qui ont changé.</p>

<h2>Bénéfices de React</h2>

<p>React est un framework de développement Web populaire et largement utilisé. Il permet de créer des interfaces
    utilisateur dynamiques de manière rapide et efficace, et dispose d''une grande communauté de développeurs qui
    contribuent à son développement et à sa documentation. En utilisant React, les développeurs peuvent également
    bénéficier de l''approche basée sur les composants et de la reconnaissance de la modification pour créer des
    interfaces utilisateur organisées et efficaces.</p>

<h2>Utilisation de React</h2>

<p>React est principalement utilisé pour créer des interfaces utilisateur dynamiques et réactives. Il est souvent
    utilisé conjointement avec d''autres technologies Web telles que HTML, CSS et JavaScript.</p>

<h2>Get Started</h2>

<p>Exemple de code de base pour application React :</p>

<pre><code>import React from ''react'';
import ReactDOM from ''react-dom'';

const App = () =&gt; {
  return &lt;div&gt;Bienvenue dans mon premier projet React !&lt;/div&gt;;
};

ReactDOM.render(&lt;App /&gt;, document.getElementById(''root''));

</code></pre>

<p>Ce code importe les modules <code>React</code> et <code>ReactDOM</code> et définit une fonction de composant appelée
    <code>App</code>. Le composant <code>App</code> affiche un message de bienvenue. La méthode
    <code>ReactDOM.render</code> est utilisée pour afficher le composant <code>App</code> dans l''élément HTML avec l''ID
    "root".
</p>'),
       (19, 19, 'Presentation SQL', '<h2>Introduction</h2>

<p>SQL (Structured Query Language) est un langage de programmation utilisé pour communiquer avec une base de données
    relationnelle. Il permet de créer, de manipuler et de gérer des données stockées dans une base de données.</p>

<h2>Utilisation de SQL</h2>

<p>SQL est utilisé pour :</p>

<ul>
    <li>Créer des bases de données et des tables</li>
    <li>Insérer, mettre à jour et supprimer des données dans les tables</li>
    <li>Sélectionner des données à partir des tables</li>
    <li>Créer, modifier et supprimer des structures de base de données (tables, vues, index, etc.)</li>
    <li>Exécuter des commandes de contrôle de données (transactions, verrous)</li>

</ul>

<h2>Syntaxe de base de SQL</h2>

<p>Voici quelques exemples de syntaxe de base de SQL :</p>

<ul>
    <li>SELECT permet de sélectionner des colonnes dans une table</li>
    <li>FROM indique la table à partir de laquelle les données doivent être sélectionnées</li>
    <li>WHERE permet de filtrer les résultats en fonction d''une condition</li>
    <li>INSERT INTO permet d''insérer des données dans une table</li>
    <li>UPDATE permet de mettre à jour des données existantes dans une table</li>
    <li>DELETE permet de supprimer des données d''une table</li>
</ul>

<p>SQL supporte plusieurs types de données, tels que :</p>

<ul>
    <li>Nombres entiers (INT)</li>
    <li>Nombres à virgule flottante (FLOAT)</li>
    <li>Chaînes de caractères (VARCHAR)</li>
    <li>Date et heure (DATETIME)</li>
</ul>

'),
       (20, 20, 'Presentation VueJS', '<h2>Introduction</h2>

<p>Vue.js est un framework open source de développement Web côté client créé en 2014. Il est basé sur le langage de
    programmation JavaScript et permet de créer des interfaces utilisateur dynamiques et réactives.</p>

<h2>Caractéristiques de Vue.js</h2>

<p>Vue.js utilise une approche de développement basée sur les composants, qui permettent de structurer une interface
    utilisateur en petites parties réutilisables. Chaque composant est indépendant et peut être mis à jour de manière
    autonome sans affecter le reste de l''application. Vue.js utilise également un mécanisme de mise à jour de
    l''interface utilisateur appelé "reconnaissance de la modification", qui permet de mettre à jour uniquement les
    parties de l''interface qui ont changé.</p>

<h2>Utilisation de Vue.js</h2>

<p>Vue.js est principalement utilisé pour créer des interfaces utilisateur dynamiques et réactives. Il est souvent utilisé conjointement avec d''autres technologies Web telles que HTML, CSS et JavaScript.</p>

<h2>Bénéfices de Vue.js</h2>

<p>Vue.js est un framework de développement Web populaire et largement utilisé. Il permet de créer des interfaces utilisateur dynamiques de manière rapide et efficace, et dispose d''une grande communauté de développeurs qui contribuent à son développement et à sa documentation. En utilisant Vue.js, les développeurs peuvent également bénéficier de l''approche basée sur les composants et de la reconnaissance de la modification pour créer des interfaces utilisateur organisées et efficaces.</p>

<h2>Get Started</h2>

<pre><code>&lt;template&gt;
  &lt;div&gt;Bienvenue dans mon premier projet Vue.js !&lt;/div&gt;
&lt;/template&gt;

&lt;script&gt;
export default {
  name: ''App''
}
&lt;/script&gt;

&lt;style&gt;
/* Styles ici */
&lt;/style&gt;
</code></pre>

<p>Ce code définit un composant Vue.js appelé "App" avec un template qui affiche un message de bienvenue. Le script définit les options du composant, telles que son nom. Le style peut être utilisé pour appliquer des styles au composant.</p>
'),
       (21, 21, 'Presentation Flutter', '<h2>Introduction</h2>

<p>Flutter est un framework open-source de développement d''applications mobiles créé par Google. Il permet de développer
    des applications iOS et Android de manière rapide et efficace en utilisant un seul codebase.</p>
<h2>Les avantages de Flutter</h2>

<ul>
    <li>Flutter utilise le langage de programmation Dart, qui est facile à apprendre et à utiliser.</li>
    <li>Flutter propose un kit de développement complet (SDK) avec tous les outils nécessaires pour développer, tester
        et déployer des applications mobiles.
    </li>
    <li>Flutter offre une expérience de développement fluide grâce à son système de "hot reload", qui permet de voir les
        changements apportés au code en temps réel sur l''émulateur ou l''appareil de test.
    </li>
    <li>Flutter fournit une bibliothèque de widgets riche et personnalisable, qui permet de créer des interfaces
        utilisateur attrayantes et cohérentes sur les différentes plateformes.
    </li>
    <li>Flutter est performant et peut gérer des applications à hautes exigences en termes de performances, grâce à sa
        compilation en code natif.
    </li>
</ul>

<h2>Cas d''utilisation de Flutter</h2>

<ul>
    <li>Flutter est idéal pour les développeurs indépendants et les petites équipes souhaitant développer rapidement des
        applications de qualité pour les deux principales plateformes mobiles.
    </li>
    <li>Flutter peut également être utilisé par les entreprises pour développer des applications internes ou pour des
        projets à long terme.
    </li>
    <li>Flutter est particulièrement adapté aux projets nécessitant une interface utilisateur personnalisée ou des
        animations fluides.
    </li>
</ul>

<h2>Get Started</h2>

<p>Voici le code de base d''une application Flutter simple qui affiche un message "Hello World" sur l''écran :</p>
<pre><code>import ''package:flutter/material.dart'';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(''Hello World''),
        ),
      ),
    );
  }
}
</code></pre>

<p>Dans ce code, nous importons le package <code>material.dart</code> de Flutter, qui fournit une bibliothèque de
    widgets pour créer des interfaces utilisateur cohérentes avec le style Material Design.</p>'),

       (22, 22, 'Presentation Typescript', '<h2>Introduction</h2>

<p>TypeScript est un langage de programmation open-source développé par Microsoft. Il est considéré comme un sur-ensemble de JavaScript, ce qui signifie qu''il étend les fonctionnalités de JavaScript en ajoutant des types statiques et d''autres fonctionnalités de programmation orientée objet.</p>

<h2>Les fonctionnalités clés de TypeScript</h2>

<ul>
  <li>Typage statique : TypeScript permet de définir des types pour les variables, les fonctions et les classes, ce qui facilite la détection des erreurs de programmation avant l''exécution du code.</li>
  <li>Compatibilité avec JavaScript : TypeScript est compatible avec la syntaxe JavaScript, ce qui signifie que les développeurs peuvent intégrer du code JavaScript dans leur application TypeScript.</li>
  <li>Programmation orientée objet : TypeScript prend en charge la programmation orientée objet en permettant la définition de classes, d''interfaces et d''héritage.</li>
  <li>Support pour les modules : TypeScript prend en charge les modules, ce qui permet aux développeurs de créer des applications modulaires et faciles à maintenir.</li>
  <li>Intégration avec les outils de développement : TypeScript est intégré à Visual Studio Code, ce qui facilite le développement et le débogage des applications TypeScript.</li>
</ul>

<h2>Exemple de code TypeScript</h2>

<p>Voici un exemple simple de code TypeScript qui montre comment déclarer une variable avec un type :</p>

<pre><code>let message: string = "Hello world";
console.log(message);
</code></pre>

<p>Dans cet exemple, nous déclarons une variable <code>message</code> de type <code>string</code> et lui attribuons une valeur. Nous utilisons ensuite la fonction <code>console.log()</code> pour afficher la valeur de la variable dans la console.</p>

<h2>Conclusion</h2>

<p>TypeScript est un langage de programmation puissant qui offre des fonctionnalités avancées pour le développement d''applications web et mobiles. En ajoutant des types statiques et d''autres fonctionnalités de programmation orientée objet à JavaScript, TypeScript permet aux développeurs de créer des applications plus robustes et plus faciles à maintenir.</p>
'),
       (23, 23, 'Presentation Golang', '<h2>Introduction</h2>
<p>GoLang (également connu sous le nom de Golang) est un langage de programmation open-source développé par Google. Il est conçu pour être rapide, efficace et facile à utiliser, avec une syntaxe concise et une gestion efficace de la mémoire.</p>
<h2>Les caractéristiques de GoLang</h2>
<ul>
<li>Langage de programmation compilé : GoLang est un langage de programmation compilé, ce qui signifie que le code source est traduit en code machine avant l''exécution.</li>
<li>Typage statique : GoLang prend en charge le typage statique, ce qui permet de détecter les erreurs de type avant l''exécution du code.</li>
<li>Gestion efficace de la mémoire : GoLang dispose d''un ramasse-miettes (garbage collector) intégré qui permet de gérer efficacement la mémoire.</li>
<li>Concurrency : GoLang prend en charge la programmation concurrente, ce qui permet de créer des applications qui peuvent exécuter plusieurs tâches en parallèle.</li>
<li>Standard library riche : GoLang dispose d''une bibliothèque standard riche qui offre de nombreuses fonctionnalités telles que la manipulation de fichiers, les entrées/sorties, la gestion de réseau, la cryptographie et plus encore.</li>
</ul>
<h2>Exemple de code GoLang</h2>
<p>Voici un exemple simple de code GoLang qui montre comment imprimer un message dans la console :</p>
<pre><code class="language-go">package main

import "fmt"

func main() {
    fmt.Println("Hello World !")
}
</code></pre>
<p>Dans cet exemple, nous importons le package `fmt` pour utiliser la fonction `Println` qui permet d''afficher le message "Hello, GoLang!" dans la console.</p>
<h2>Conclusion</h2>
<p>GoLang est un langage de programmation moderne qui offre des performances élevées, une gestion efficace de la mémoire et une prise en charge de la programmation concurrente. Avec une syntaxe concise et une bibliothèque standard riche, GoLang est facile à apprendre et à utiliser. Si vous recherchez un langage de programmation efficace et rapide, GoLang est un excellent choix.</p>'),
       (24, 24, 'Presentation Android', '<h2>Introduction</h2>
	<p>Android est un système d''exploitation mobile open-source développé par Google. Il est utilisé par des millions d''appareils mobiles dans le monde entier, tels que les smartphones, les tablettes, les montres connectées et les télévisions intelligentes.</p>
	<h2>L''architecture d''Android</h2>
	<p>Android utilise une architecture en couches, composée de cinq couches principales :</p>
	<ul>
		<li>L''application : la couche supérieure où les applications sont exécutées.</li>
		<li>Le framework d''application : une couche intermédiaire qui fournit des API pour les applications.</li>
		<li>Le framework système : une couche intermédiaire qui fournit des services système tels que la gestion des fichiers, la sécurité, la gestion des ressources et la communication interprocessus.</li>
		<li>Le noyau Linux : une couche basse qui fournit les services de base tels que la gestion de la mémoire, la gestion du processeur et la gestion des périphériques.</li>
		<li>Le matériel : la couche la plus basse qui comprend les composants matériels tels que l''écran, la caméra, le processeur et la mémoire.</li>
	</ul>
	<h2>Les outils de développement pour Android</h2>
	<p>Pour développer des applications Android, vous pouvez utiliser Android Studio, qui est l''environnement de développement intégré officiel pour Android. Il offre des fonctionnalités telles que l''éditeur de code, le débogueur, le compilateur, l''émulateur Android et bien plus encore.</p>
	<h2>Les langages de programmation pour Android</h2>
	<p>Android prend en charge plusieurs langages de programmation, notamment Java, Kotlin et C++. Java est le langage de programmation historique pour Android, tandis que Kotlin est de plus en plus populaire en raison de sa concision et de sa sécurité accrues.</p>
	<h2>Conclusion</h2>
	<p>Android est un système d''exploitation mobile populaire utilisé par des millions d''utilisateurs dans le monde entier. Il offre une architecture en couches avec une variété d''outils et de langages de programmation pour développer des applications. Si vous souhaitez développer des applications mobiles, Android est une plateforme intéressante à explorer.</p>')
;
