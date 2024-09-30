# Unix Shell Scripting for Automation

This repository contains a series of shell scripts for automating common tasks on Unix systems. The scripts are designed to be simple to use, customizable, and efficient.

### Shell Used
All the scripts in this repository are written for and designed to run with the **`sh`** shell (Bourne Shell), ensuring compatibility across various Unix-based systems.


## Available Scripts


**[1. Hello World](./point_1.sh):** 
- Clears the terminal screen.
- Prints the message **"Hello World from Shell"** to the terminal.


**[2. Number of lines in /etc/profile](./point_2.sh):** 
- Clears the terminal screen.
- Prints the message **"The number of lines in the file /etc/profile is:"** followed by the actual number of lines found in the file.


**[3. Search a word in a file](./point_3.sh):** 
- Clears the terminal screen.
- Searches for a word provided by the user in a file specified by the user.
- The execution would be in the format: `  ./point_3.sh casa /etc/passwd.sh <searched_word> <file_to_search>`.  
  Example:  
  ```bash
  ./point_3.sh home /etc/passwd
  ```
- Prints the search results (lines where the word appears).


**[4a. Create Users](./users.sh):** 
- **Usernames**: The script automatically generates usernames (`user1`, `user2`, `user3`, `user4`, and `user5`).
- **Descriptions**: Each user is assigned a description, such as "User number 1", "User number 2", etc.
- **Home directories**: For each user, a home directory is automatically created using the `-m` flag with `useradd`.
- **Error handling**: The script provides feedback on whether the user was successfully created or if an error occurred.

**[4b. Users info](./point_4.sh):** 


This script extracts usernames and their descriptions from the `/etc/passwd` file and saves them into a new file called `users_info.txt`.


- **Clear Terminal**: Clears the terminal screen at the start of the execution.
- **File Deletion**: Checks if `users_info.txt` already exists and deletes it to avoid conflicts.
- **Extraction**: Extracts the usernames and descriptions from the `/etc/passwd` file using `cut` and saves the output in the `users_info.txt` file.
- **File Output**: Shows a message indicating that the file has been successfully created and is stored in the current directory.


## Shell Menu:

 
**[Menu](./menu.sh): (Shell Menu Script):**
This shell script provides a menu that allows the user to execute other scripts (`point_1.sh`, `point_2.sh`, `point_3.sh`) and includes an option to exit the program.

#### Features:
- Displays a menu with options to select and run other scripts.
- Automatically checks and grants execution permissions to the selected script before running it.
- Allows for repeated executions of the selected scripts without restarting the program.
- Includes an "Exit" option to terminate the script.

#### Menu Options:
- **Option 1:** Runs `point_1.sh` (clears the terminal and prints "Hello World from Shell").
- **Option 2:** Runs `point_2.sh` (clears the terminal and prints the number of lines in `/etc/profile`).
- **Option 3:** Runs `point_3.sh` (searches for a user-specified word in a user-specified file).
- **Option 4:** Exits the menu and terminates the program.

#### Usage:
To run the menu script, simply execute:

```bash
./point_6.sh
```


# Shell Script Menu for Automation

This repository contains a menu-driven shell script designed to automate various common tasks on Unix-like systems. The menu provides a simple interface for executing specific scripts by selecting options.

## Available Scripts

1. **Hello World**  
   Prints a "Hello World" message.

2. **Line Count in /etc/profile**  
   Displays the number of lines in the `/etc/profile` file.

3. **Search Word in a File**  
   Allows you to search for a specific word in a user-specified file.

4. **Extract User Information**  
   Extracts usernames and descriptions from the `/etc/passwd` file and saves them to `users_info.txt`.

7a. **Check File or Directory**  
   Verifies if a given name in a specified directory is a file, directory, or another type of item.

7b. **Check Failed Root Logins**  
   Displays the date, time, and total number of failed root login attempts.

**u. Create Users**  
   Automatically creates five users with descriptions.

## Usage

1. Run the script:

   ```bash
   ./menu_script.sh
