# Utilisez une image Node.js pour construire l'application
FROM node:14 

# Définissez le répertoire de travail
WORKDIR /app

# Copiez le fichier package.json et le fichier package-lock.json
COPY ./deploy/ ./

# Installez les dépendances du serveur Express
WORKDIR /app/api

RUN npm install

WORKDIR /app

# Exposez le port sur lequel le serveur Express fonctionne (ajustez si nécessaire)
EXPOSE 9999

# Commande pour démarrer le serveur Express
CMD [ "node", "api/index.js" ]