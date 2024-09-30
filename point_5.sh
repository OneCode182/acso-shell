#!/bin/sh
# Script to list files in a directory with specified permissions

# Check if the correct number of arguments are provided
if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <directory> <permissions>"
  exit 1
fi

# Get the directory and permissions from the arguments
directory=$1
permissions=$2

# Check if the provided directory exists
if [ ! -d "$directory" ]; then
  echo "Error: Directory '$directory' does not exist."
  exit 1
fi

# List files with the specified permissions
echo "Listing files in '$directory' with permissions '$permissions':"
find "$directory" -type f -perm -$(echo "$permissions" | tr -d '-') -exec ls -l {} + | grep "$permissions"

# If no files are found, print a message
if [ $? -ne 0 ]; then
  echo "No files with the specified permissions found."
fi