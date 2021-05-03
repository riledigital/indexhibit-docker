FROM php:7.4-apache-buster
# Install and activate the mysqli PHP extension
RUN docker-php-ext-install mysqli
RUN docker-php-ext-enable mysqli

WORKDIR /var/www/html

# Install git so we can clone repos in the container
RUN apt-get -y update
RUN apt-get -y install git

# Run setup shell script
COPY setup-indexhibit.sh /var/www/html
RUN chmod +x ./setup-indexhibit.sh
RUN ./setup-indexhibit.sh

# Reset permissions
RUN chown -R www-data:www-data /var/www

# Run Apache to serve PHP
EXPOSE 80
CMD ["apache2-foreground"]