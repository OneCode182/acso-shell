#!/bin/sh

# Clear the terminal screen
clear

# Title
echo "Running script for viewing users and descriptions (point_4.sh)..."
sleep 2

# Check if users_info.txt exists, and delete it if it does
if [ -f "users_info.txt" ]; then
    echo "File 'users_info.txt' already exists. Deleting..."
    rm users_info.txt
fi

# Extract user names and descriptions from the /etc/passwd file and save it to users_info.txt
cut -d: -f1,5 /etc/passwd > users_info.txt

# Show the generated file
echo "File 'users_info.txt' created successfully:"
echo "Saved in this directory"