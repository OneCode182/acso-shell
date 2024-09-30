#!/bin/sh
# Script to list files in a given directory with specified permissions

# Check if the correct number of arguments are provided
if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <directory> <permissions>"
  echo "Example: $0 /etc/ -rw-r--r--"
  exit 1
fi

# Assign input parameters to variables
directory=$1
permissions=$2

# Check if the provided directory exists
if [ ! -d "$directory" ]; then
  echo "Error: Directory '$directory' does not exist."
  exit 1
fi

# List files in the directory and filter by permissions
echo "Listing files in '$directory' with permissions '$permissions':"
ls -l "$directory" | awk -v perm="$permissions" '$1 == perm {print $0}' | more

# Check if no files were found
if [ $? -ne 0 ]; then
  echo "No files with the specified permissions were found."
fi
