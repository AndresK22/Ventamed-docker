# Laravel Ventamed Application

## Steps for execute in Windows
- Fill the  `.env.docker.example` and the `.env.example` files with the database's credentials.
  - The database name, user and password has to be the same for both files.
  - It's recommended that the root password variable be different from that of the user.
- Run the `configure.bat` file.
- Execute `docker compose pull` and later `docker compose up` commands.
- When the containers be ready, run the `post_configure.bat` file.
- Open `localhost:8080` in the web browser and enter your credentials (The user and password created in the env files).
- Select your database and select the `Import` option.
- Select the `tables.sql` file. Disable the `Allow an import to be interrupted if the script detects that it has approached the PHP time limit.` and `Enable foreign key checking` options and run the import.
- Open `localhost` in the web browser and register the credentials forr the admin User.
- Now you can log in and use the application.

## Steps for execute in Linux
- Fill the  `.env.docker.example` and the `.env.example` files with the database's credentials.
  - The database name, user and password has to be the same for both files.
  - It's recommended that the root password variable be different from that of the user.
- Run the `configure.sh` file with `./configure.sh` command.
- Execute `docker compose pull` and later `docker compose up` commands.
- When the containers be ready, run the `post_configure.sh` with `./post_configure.sh` command.
- Open `localhost:8080` in the web browser and enter your credentials (The user and password created in the env files).
- Select your database and select the `Import` option.
- Select the `tables.sql` file. Disable the `Allow an import to be interrupted if the script detects that it has approached the PHP time limit.` and `Enable foreign key checking` options and run the import.
- Open `localhost` in the web browser and register the credentials forr the admin User.
- Now you can log in and use the application.

### About Application
- MySQL 9.0
- Redis 7.4
- PHPMyAdmin 5.2.1
- PHP-FPM 8.2
- NginX 1.27
- Laravel 9.47.0

### Useful commands
- `docker compose down -v --rmi all --remove-orphans` for completly drop of the containers
- `mysql -u username -p databasename < dump.sql` in the mysql container, for import database from a sql file.