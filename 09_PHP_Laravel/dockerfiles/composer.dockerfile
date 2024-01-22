FROM composer:latest

# Needed on Linux to avoid permission errors
# RUN addgroup -g 1000 laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel

# Needed on Linux to avoid permission errors
# USER laravel

WORKDIR /var/www/html

ENTRYPOINT [ "composer", "--ignore-platform-reqs" ]