#!/bin/sh

# Clear the terminal screen
clear

# Title
echo "Running script for view users and descriptions (point_4.sh)..."

# Extraer nombres de usuarios y descripciones desde el archivo /etc/passwd
cut -d: -f1,5 /etc/passwd > user_names_and_descriptions.txt

# Mostrar el archivo generado
echo "Archivo user_names_and_descriptions.txt creado con éxito:"
echo "CONTENIDO:"
cat user_names_and_descriptions.txt