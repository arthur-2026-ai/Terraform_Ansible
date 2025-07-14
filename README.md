Voici un plan de travail structuré, dans la mise en place d’un pipeline CI/CD avec GitHub Actions, Terraform, Ansible, Node.js et AWS

Étapes principales du projet

🧱 Étape 1 : Provisionnement de l’infrastructure avec Terraform
✅ Créer un compte sur AWS et access and secret key.

✅ Écrire un script Terraform pour créer une EC2 sur aws".

✅ Générer une clé SSH pour l’accès au serveur (ou en utiliser une existante).

✅ Ajouter un terraform.tfvars ou utiliser des variables d’environnement pour les secrets.

🛠️ Étape 2 : Configuration serveur avec Ansible
✅ Créer un inventaire avec l’IP de la EC2.

✅ Créer un rôle common pour :

Mise à jour du système

Installation de Node.js, npm, git, etc.

✅ Créer un rôle app :

Cloner le repo GitHub

Installer les dépendances (npm install)

Démarrer l'application (via pm2 ou nohup, etc.)

🌐 Étape 3 : Créer une application Node.js simple
✅ Créer une API REST simple avec une seule route / qui renvoie "Hello, world!".

✅ Écouter sur le port 80.

✅ Pousser le code sur un repo GitHub.

🚀 Étape 4 : Déploiement manuel avec Ansible
✅ Créer un playbook node_service.yml.

✅ Ajouter le tag app pour le rôle.

✅ Tester avec la commande :

bash
Copier
Modifier
ansible-playbook node_service.yml --tags app
⚙️ Étape 5 : Automatiser avec GitHub Actions
Deux options :

✅ Option 1 : Exécuter Ansible depuis GitHub Actions
Créer un workflow .github/workflows/deploy.yml.

Installer Ansible dans le job.

Utiliser webfactory/ssh-agent pour charger la clé privée SSH.

Exécuter ansible-playbook à distance.

✅ Option 2 : Utiliser SSH direct depuis GitHub Actions
Utiliser appleboy/ssh-action ou une autre action.

Copier le code avec rsync ou cloner dans le job.

Lancer les commandes :

npm install

node index.js ou pm2 start

🔐 Étape 6 : Gérer les secrets GitHub
Ajouter :

DO_TOKEN

SSH_PRIVATE_KEY

SERVER_IP

USER (ex. root ou ubuntu)

Autre projet a realiser

Application web simple : VPC + EC2 + Security Groups + Load Balancer
Architecture 3-tiers : VPC + Subnets publics/privés + EC2 + RDS + ALB
Infrastructure serverless : Lambda + API Gateway + DynamoDB
Cluster de conteneurs : ECS ou EKS avec VPC et services associés
Infrastructure de stockage : S3 + CloudFront + IAM
Environnement de développement : VPC + EC2 + RDS pour dev/staging