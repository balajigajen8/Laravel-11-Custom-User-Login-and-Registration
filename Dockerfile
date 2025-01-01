FROM php:8.1-fpm
RUN apt-get update && apt-get install -y nginx \
    && docker-php-ext-install pdo_mysql

COPY . /var/www
WORKDIR /var/www
RUN chown -R www-data:www-data /var/www
CMD ["php-fpm"]
