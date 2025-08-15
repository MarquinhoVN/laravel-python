#!/bin/bash

# Se não existe artisan, instala Laravel
if [ ! -f "artisan" ]; then
    echo "📦 Instalando Laravel..."
    composer create-project laravel/laravel . --prefer-dist
    chown -R www-data:www-data /var/www/html
else
    echo "✅ Laravel já está instalado."
fi

# Inicia PHP-FPM
php-fpm
