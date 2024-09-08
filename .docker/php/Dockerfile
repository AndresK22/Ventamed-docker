FROM php:8.2-fpm-alpine

#Install necesary libraries
RUN apk update
RUN apk add git
RUN apk add zip

#Install library for MySql connection
RUN docker-php-ext-install pdo_mysql

#Install Composer (Extracted for the official documentation)
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php -r "if (hash_file('sha384', 'composer-setup.php') === 'dac665fdc30fdd8ec78b38b9800061b4150413ff2e3b6f88543c636f7cd84f6db9189d43a81e5503cda447da73c7e5b6') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"
#Add Compose to the PATH
RUN mv composer.phar /usr/local/bin/composer
