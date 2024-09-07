@echo off

REM Copy .env.example file to .env file in target directory
copy ".env.example" "src\.env"

REM Copy .env.docker.example file to .env file in source
copy ".env.example" "src\.env"

echo .env files created successfully.

exit
