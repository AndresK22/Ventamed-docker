#!/bin/bash

# Mostrar mensaje sobre acceso al usuario www-data
echo "-- Given access to the www-data user"

# Cambiar la propiedad del directorio /var/www al usuario www-data
docker exec -i php-container chown -R www-data:www-data /var/www

# Instalar librerías de Laravel
echo "-- Install Laravel libraries"

# Instalar librerías de Laravel usando Composer (descomentado los comandos de ejemplo)
# docker exec -i php-container composer global require laravel/installer

# Instalar dependencias de Composer
# docker exec -i php-container composer install --prefer-dist --no-dev -o

docker exec -i php-container composer require predis/predis
docker exec -i php-container composer require mike42/escpos-php
docker exec -i php-container composer require spatie/laravel-permission
docker exec -i php-container composer require tightenco/ziggy

# Configurar la aplicación Laravel
echo "-- Configuring Laravel config"

# Crear enlaces de almacenamiento
docker exec -i php-container php artisan storage:link

# Generar la clave de aplicación
docker exec -i php-container php artisan key:generate

# Cachear las rutas
docker exec -i php-container php artisan route:cache

# Cachear las vistas
docker exec -i php-container php artisan view:cache

# Comandos para guardar la caché (comentados)
# docker exec -i php-container php artisan cache:clear
# docker exec -i php-container php artisan config:cache

# Mostrar mensaje de inicio del proyecto Laravel
echo "-- Laravel project started"
