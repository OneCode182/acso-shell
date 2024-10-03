#!/bin/sh
# Script to list files in a given directory with specified permissions and show a summary

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

# Count files with the specified permissions
count_matching_files=$(ls -l "$directory" | awk -v perm="$permissions" '$1 == perm {print $0}' | wc -l)

# Count total number of files in the directory (excluding directories)
total_files=$(ls -l "$directory" | grep -v '^d' | wc -l)

# Display results
echo "Total number of files in '$directory': $total_files"
echo "Number of files with permissions '$permissions': $count_matching_files"

# Check if no files were found with the specified permissions
if [ "$count_matching_files" -eq 0 ]; then
  echo "No files with the specified permissions were found."
else
  # Ask the user if they want to list the files with the specified permissions
  read -p "Do you want to list the files with permissions '$permissions'? (y/n): " choice

  if [ "$choice" = "y" ] || [ "$choice" = "Y" ]; then
    # List files in the directory and filter by permissions
    echo "Listing files in '$directory' with permissions '$permissions':"
    ls -l "$directory" | awk -v perm="$permissions" '$1 == perm {print $0}' | more
  else
    echo "No files listed."
  fi
fi
