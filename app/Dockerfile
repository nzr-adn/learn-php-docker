FROM php:7.3-apache

RUN apt-get update
RUN apt-get upgrade -y

RUN docker-php-ext-install mysqli pdo pdo_mysql

RUN mkdir /app-src

COPY app-src/ /app-src/

RUN cp -r /app-src/* /var/www/html/.
