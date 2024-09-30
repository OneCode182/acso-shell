# Unix Shell Scripting for Automation

This repository contains a series of shell scripts for automating common tasks on Unix systems. The scripts are simple, customizable, and designed to enhance efficiency.

### Shell Used
All scripts are written for the **`sh`** shell, ensuring compatibility across various Unix-based systems.

## Shell Menu

The main feature of this repository is a menu-driven shell script that simplifies running individual scripts for various tasks. The menu provides a clear and easy interface for selecting and executing each script.

### Menu Options

- **[1. Hello World](./point_1.sh):** 
   Prints a "Hello World" message to the terminal.

- **[2. Number of lines](./point_2.sh):** 
   Counts and displays the number of lines in the `/etc/profile` file.

- **[3. Search a word in a file](./point_3.sh):** 
   Allows searching for a specific word in a file provided by the user.  
   **Usage**: `./point_3.sh <word> <file>`  
   Example: `./point_3.sh home /etc/passwd`

- **[4a. Create Users](./users.sh):** 
  - **Usernames**: The script automatically generates usernames (`user1`, `user2`, `user3`, `user4`, and `user5`).
  - **Descriptions**: Each user is assigned a description, such as "User number 1", "User number 2", etc.
  - **Home directories**: For each user, a home directory is automatically created using the `-m` flag with `useradd`.


- **[4b. Users info](./point_4.sh):** 
  Extracts usernames and their descriptions from the `/etc/passwd` file and saves them into `users_info.txt`.


- **[7a. Check File or Directory](./point_7a.sh):** 
Verifies if a specified item in a directory is a file, directory, or something else.

- **[7b. Check Failed Root Logins](./point_7b.sh):** 
Displays the date, time, and total number of failed login attempts for the root user by scanning system logs.

- **Exit**  
   Exits the menu.


### How to Use the Menu

1. If the script does not have execution permissions, grant them using `chmod`:

   ```bash
   chmod +x menu_script.sh
   ```
1. Run the menu script:

   ```bash
   ./menu_script.sh
