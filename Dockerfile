FROM php:7.4-apache-buster
RUN docker-php-ext-install mysqli
RUN docker-php-ext-enable mysqli
WORKDIR /var/www/html
COPY setup-indexhibit.sh /var/www/html

RUN apt-get -y update
RUN apt-get -y install git

# Run setup script
RUN chmod +x ./setup-indexhibit.sh
RUN ./setup-indexhibit.sh

RUN chown -R www-data:www-data /var/www

EXPOSE 80
CMD ["apache2-foreground"]