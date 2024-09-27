# Unix Shell Scripting for Automation

This repository contains a series of shell scripts for automating common tasks on Unix systems. The scripts are designed to be simple to use, customizable, and efficient.

## Available Scripts

**[1. point_1.sh](./point_1.sh):** 
- Clears the terminal screen.
- Prints the message **"Hello World from Shell"** to the terminal.

**[2. point_2.sh](./point_2.sh):** 
- Clears the terminal screen.
- Prints the message **"The number of lines in the file /etc/profile is:"** followed by the actual number of lines found in the file.

**[3. point_3.sh](./point_3.sh):** 
- Clears the terminal screen.
- Searches for a word provided by the user in a file specified by the user.
- The execution would be in the format: `  ./point_3.sh casa /etc/passwd.sh <searched_word> <file_to_search>`.  
  Example:  
  ```bash
  ./point_3.sh home /etc/passwd
  ```
- Prints the search results (lines where the word appears).


**[4. point_4_users.sh](./point_4_users.sh):** 
- **Usernames**: The script automatically generates usernames (`user1`, `user2`, `user3`, `user4`, and `user5`).
- **Descriptions**: Each user is assigned a description, such as "User number 1", "User number 2", etc.
- **Home directories**: For each user, a home directory is automatically created using the `-m` flag with `useradd`.
- **Error handling**: The script provides feedback on whether the user was successfully created or if an error occurred.

## Usage:

1. Run the script with superuser privileges (`sudo`) to ensure it has the necessary permissions to create users.
2. The script will create five new users with the default configuration for each one.
3. If a user is created successfully, a message will appear confirming the action. If there's an error, the script will display a failure message.

## Example:

When executed, the script will produce the following output for each user:

```plaintext
Successfully created user1 with description: User number 1
Successfully created user2 with description: User number 2
...
