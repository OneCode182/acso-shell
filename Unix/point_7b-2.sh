#!/bin/sh

# Archivo
LOG_FILE="/var/log/authlog"

# Filtrar
echo "Intentos fallidos de acceso a root"
#grep "LOGIN FAILURE" "$LOG_FILE"
grep -A 1 "ROOT LOGIN" /var/log/authlog | grep "LOGIN FAILURE"

# Mostrar total
#TOTAL=$(grep -c "LOGIN FAILURE" "$LOG_FILE")

#echo "Total de intentos fallidos: $TOTAL"
