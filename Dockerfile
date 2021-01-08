FROM php:7.3-apache

RUN apt-get update
RUN apt-get upgrade -y

RUN docker-php-ext-install mysqli pdo pdo_mysql

RUN mkdir /app \
 && mkdir /app/docker-php \
 && mkdir /app/docker-php/www

COPY www/ /app/docker-php/www/

RUN cp -r /app/docker-php/www/* /var/www/html/.
