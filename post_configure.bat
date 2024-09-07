@echo off

REM Starting the Laravel Project
docker exec -i php-container composer install

docker exec -i php-container php artisan key:generate

REM Command for save the cache
REM docker exec -i php-container php artisan config:cache

echo Laravel project started

exit
