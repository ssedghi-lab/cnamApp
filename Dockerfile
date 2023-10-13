FROM httpd:2.4

RUN apt-get update && apt-get install -y \
    nodejs \
    npm \
    proxy_html \
    unzip \
    zip 
  
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
