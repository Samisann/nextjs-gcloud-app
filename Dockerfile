# Utilisez l'image Node.js officielle en tant que base
FROM node:alpine

# Répertoire de travail à l'intérieur du conteneur
WORKDIR /app

# Copiez les fichiers package.json et package-lock.json dans le conteneur
COPY package*.json ./

# Installez les dépendances
RUN npm install

# Copiez le reste des fichiers dans le conteneur
COPY . .



# Exposez le port 3000
EXPOSE 3000

# Commande pour exécuter l'application
CMD ["npm", "dev"]
