#!/bin/sh

# Limpiar pantalla
clear

# Contar el numero de lineas del archivo /etc/profile
lines=$(wc -l < /etc/profile | xargs)

# Numero de lineas del archivo '/etc/profile'
echo "El numero de lineas del archivo '/etc/profile' es: $lines"