FROM php:8.2-fpm

RUN apt-get update && apt-get install -y \
    libpq-dev git unzip curl && \
    docker-php-ext-install pdo pdo_pgsql

# Composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/html

# Script para instalar Laravel na primeira vez
COPY init.sh /usr/local/bin/init.sh
RUN chmod +x /usr/local/bin/init.sh

CMD ["/usr/local/bin/init.sh"]
