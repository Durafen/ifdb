FROM php:7-apache

RUN docker-php-ext-install mysqli
RUN a2enmod rewrite
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"
