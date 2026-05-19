FROM php:8.2-apache

# Install system dependencies
RUN apt-get update && apt-get install -y \
    curl zip unzip git libzip-dev libpng-dev libonig-dev libpq-dev \
    && docker-php-ext-install pdo pdo_mysql pdo_pgsql zip mbstring gd

# Install Node.js 20
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/html
COPY . .

RUN composer install --no-dev --optimize-autoloader
RUN npm install && npm run build

# Laravel permissions
RUN chown -R www-data:www-data storage bootstrap/cache

# Point Apache to Laravel's public folder
RUN sed -i 's|/var/www/html|/var/www/html/public|g' /etc/apache2/sites-available/000-default.conf
RUN sed -i 's/AllowOverride None/AllowOverride All/g' /etc/apache2/apache2.conf
RUN echo '<Directory /var/www/html/public>\n\
    Options Indexes FollowSymLinks\n\
    AllowOverride All\n\
    Require all granted\n\
</Directory>' >> /etc/apache2/sites-available/000-default.conf
RUN a2enmod rewrite

EXPOSE 80
CMD php artisan migrate --force && apache2-foreground