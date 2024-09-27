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