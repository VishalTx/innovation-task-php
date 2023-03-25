FROM php:7.4-apache

# Install dependencies
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        libzip-dev \
        unzip \
    && rm -rf /var/lib/apt/lists/*

# Install PHP extensions
RUN docker-php-ext-install pdo_mysql zip mysqli

# Set up Apache
RUN a2enmod rewrite

# Copy application files
WORKDIR /var/www/html
COPY . .

# Expose port
EXPOSE 80

# Start Apache
CMD ["apache2-foreground"]
