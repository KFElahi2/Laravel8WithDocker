FROM php:7.4-fpm-alpine

ARG UID
ARG GID

WORKDIR /var/www/html/forum

RUN docker-php-ext-install pdo pdo_mysql

RUN addgroup -g ${GID} laravel && adduser -G laravel -g laravel -s /bin/sh -D -u ${UID} laravel

USER laravel

#ENV COMPOSER_ALLOW_SUPERUSER=1
#COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
#COPY docker/script.sh ./

