# Use PHP 8.2 FPM image
FROM php:8.2-fpm

# Install Nginx and necessary extensions
RUN apt-get update && apt-get install -y nginx \
    && docker-php-ext-install pdo_mysql \
    && apt-get install -y libzip-dev unzip \
    && docker-php-ext-install zip

# Install Composer globally
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Copy application files
COPY . /var/www

# Set working directory
WORKDIR /var/www

# Set permissions
RUN chown -R www-data:www-data /var/www

# Expose ports for Nginx and PHP-FPM
EXPOSE 80

# Start Nginx and PHP-FPM
CMD service nginx start && php-fpm

