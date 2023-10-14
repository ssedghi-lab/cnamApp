FROM php:7.4-apache

RUN apt-get update && apt-get install -y \
    nodejs \
    npm \
    unzip \
    zip \
 && rm -rf /var/lib/apt/lists/*
 a2enmod

RUN a2enmod proxy
RUN a2enmod proxy_http
COPY ./deploy/my-proxy.conf /usr/local/apache2/conf/my-proxy.conf

COPY ./deploy/ /var/www/html

WORKDIR /var/www/html/api

RUN npm install && npm build

# Exposer le port 80 pour permettre les connexions entrantes
EXPOSE 80

# Définir l'entrée de l'application
CMD ["apache2-foreground"]
ENTRYPOINT ["npm","start"]
