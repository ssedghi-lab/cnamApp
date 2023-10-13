FROM php:7.4-apache

RUN apt-get update && apt-get install -y \
    nodejs \
    npm \
    unzip \
    zip \
 && rm -rf /var/lib/apt/lists/*

RUN a2enmod rewrite  
RUN a2enmod proxypass
RUN a2enmod proxypass-reverse
COPY ./deploy/my-proxy.conf /usr/local/apache2/conf/my-proxy.conf

COPY ./deploy/ /var/www/html

WORKDIR /var/www/html/api

RUN npm install && npm build

# Exposer le port 80 pour permettre les connexions entrantes
EXPOSE 80

# Définir l'entrée de l'application
CMD ["apache2-foreground"]
ENTRYPOINT ["npm","start"]
