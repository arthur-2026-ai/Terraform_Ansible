# Étape 1 : Utiliser une image Node.js légère
FROM node:18-alpine

# Étape 2 : Créer le dossier de travail
WORKDIR /app

# Étape 3 : Copier les fichiers nécessaires
COPY package*.json ./
RUN npm install

# Étape 4 : Copier le reste du projet
COPY . .

# Étape 5 : Exposer le port sur lequel l'app écoute
EXPOSE 3000

# Étape 6 : Commande de lancement
CMD ["node", "index.js"]
