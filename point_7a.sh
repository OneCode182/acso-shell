#!/bin/sh
# Script to check if the input is a file, directory, or other in the specified directory

# Check if two arguments are provided (name and directory)
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <name> <directory>"
    exit 1
fi

name=$1
directory=$2

# Check if the provided directory exists
if [ ! -d "$directory" ]; then
    echo "Error: Directory '$directory' does not exist."
    exit 1
fi

# Full path to the item being checked
path="$directory/$name"

# Check if the item exists
if [ ! -e "$path" ]; then
    echo "'$name' does not exist in the directory '$directory'."
    exit 1
fi

# Determine if it's a file, directory, or something else
if [ -f "$path" ]; then
    echo "'$name' is a file in the directory '$directory'."
elif [ -d "$path" ]; then
    echo "'$name' is a subdirectory in the directory '$directory'."
else
    echo "'$name' is something else (not a regular file or directory) in the directory '$directory'."
fi