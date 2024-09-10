#!/bin/bash

# Copiar el archivo .env.example a .env en el directorio target
cp ".env.example" "src/.env"

# Copiar el archivo .env.docker.example a .env en el directorio actual
cp ".env.docker.example" ".env"

# Mostrar mensaje de éxito
echo ".env files created successfully."
