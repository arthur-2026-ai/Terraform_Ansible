
# Étape 1 : utiliser l'image officielle Node.js
FROM node:18

# Étape 2 : définir le dossier de travail
WORKDIR /usr/src/app

# Étape 3 : copier les fichiers nécessaires
COPY package*.json ./

# Étape 4 : installer les dépendances
RUN npm install --production

# Étape 5 : copier le reste des fichiers
COPY . .

# Étape 6 : exposer le port (si ton app écoute dessus)
EXPOSE 3001

# Étape 7 : commande de lancement
CMD ["node", "index.js"]
