#!/bin/sh
# Script to create 5 users (user1, user2, ... user5) with descriptions

for i in $(seq 1 5); do
  username="user$i"
  description="User number $i"
  
  # Create the user with the provided description
  useradd -m -c "$description" "$username"
  
  if [ $? -eq 0 ]; then
    echo "Successfully created $username with description: $description"
  else
    echo "Failed to create $username"
  fi
done