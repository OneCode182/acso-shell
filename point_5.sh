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

# Find and list files that match the specified permissions
echo "Listing files in '$directory' with permissions '$permissions':"
find "$directory" -type f -perm -$(echo "$permissions" | sed 's/[-]//g') -exec ls -l {} + | grep "$permissions"

# Check if no files were found
if [ $? -ne 0 ]; then
  echo "No files with the specified permissions were found."
fi
