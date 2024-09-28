#!/bin/sh
# Script to create 5 users (user1, user2, ... user5) with descriptions

for i in $(seq 1 5); do
  username="user$i"
  description="User number $i"
  
  # Check if the user already exists
  if id "$username" >/dev/null 2>&1; then
    echo "User $username already exists, skipping..."
  else
    # Create the user with the provided description
    useradd -m -c "$description" "$username"
    
    if [ $? -eq 0 ]; then
      echo "Successfully created $username with description: $description"
    else
      echo "Failed to create $username"
    fi
  fi
done