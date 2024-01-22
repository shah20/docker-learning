FROM php:7.4-fpm-alpine

WORKDIR /var/www/html

COPY src .

RUN docker-php-ext-install pdo pdo_mysql

# www-data is the default user for PHP-FPM running in Alpine
# Giving ownership to www-data on the /var/www/html directory
RUN chown -R www-data:www-data /var/www/html

# Needed on Linux to avoid permission errors
# RUN addgroup -g 1000 laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel

# Needed on Linux to avoid permission errors
# USER laravel