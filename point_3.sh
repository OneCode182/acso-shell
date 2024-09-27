#!/bin/sh

# Limpiar pantalla
clear

# Argumentos como variables
word="$1"
file_path="$2"

# Buscando la palabra en el archivo
echo "Buscando '$word' en '$file_path'..."

# Guardar resultado
result=$(grep -n "$word" "$file_path")

# Imprimiendo resultados
if [ -z "$result" ]; then
    echo "No se encontro la palabra '$word' en el archivo."
else
    echo "Se encontro la palabra '$word' en el archivo."
    echo "RESULTADOS:"
    echo "$result" 