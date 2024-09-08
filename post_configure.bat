@echo off

REM Given access to the www-data user
echo -- Given access to the www-data user
docker exec -i php-container chown -R www-data:www-data /var/www

REM Install Laravel libraries
echo -- Install Laravel libraries
REM docker exec -i php-container composer global require laravel/installer

REM docker exec -i php-container composer install --prefer-dist --no-dev -o

docker exec -i php-container composer require predis/predis
docker exec -i php-container composer require mike42/escpos-php
docker exec -i php-container composer require spatie/laravel-permission
docker exec -i php-container composer require tightenco/ziggy

REM Configuring Laravel config
echo -- Configuring Laravel config
docker exec -i php-container php artisan storage:link

docker exec -i php-container php artisan key:generate

docker exec -i php-container php artisan route:cache

docker exec -i php-container php artisan view:cache

REM Command for save the cache
REM docker exec -i php-container php artisan cache:clear
REM docker exec -i php-container php artisan config:cache

echo -- Laravel project started

pause
exit
