#!/bin/sh
# Menu Shell script using case statement with execution permission checks

# Function to display the menu options
show_menu() {
    echo "--------------------------------------------------"
    echo "      Shell Scripts Menu - Choose an option:"
    echo "--------------------------------------------------"
    echo "  1. Hello World                       (point_1.sh)"
    echo "  2. Number of lines in /etc/profile   (point_2.sh)"
    echo "  3. Search word in a file             (point_3.sh)"
    echo "  4. Search Users and info             (point_4.sh)"
    echo " 7a. Check file or directory           (point_7a.sh)"
    echo "  u. Create users                      (users.sh)"

    echo "  0. Exit"
    echo "--------------------------------------------------"
}

# Function to give execution permission if needed and run the script
run_script() {
    script_name=$1
    if [ -f "$script_name" ]; then
        chmod +x "$script_name"  # Give execution permissions
        shift  # Remove the script name from the parameters list
        ./"$script_name" "$@"    # Run the script with the rest of the parameters
    else
        echo "Error: $script_name not found."
    fi
}

while true; do
    show_menu
    # Read user choice
    read -p "Enter your choice: " choice
    
    case $choice in
        1)
            echo "Running point_1.sh..."
            run_script "point_1.sh"
            ;;

        2)
            echo "Running point_2.sh..."
            run_script "point_2.sh"
            ;;

        3)
            # Prompt the user to input the required parameters
            read -p "Enter the word to search for: " word
            read -p "Enter the path to the file: " path
            
            # Run point_3.sh with the parameters
            echo "Running point_3.sh with parameters '$word' and '$path'..."
            run_script "point_3.sh" "$word" "$path"
            ;;

        4)
            run_script "point_4.sh"
            ;;



        7a)
            # Prompt the user for the name and directory
            read -p "Enter the name of the item: " name
            read -p "Enter the directory to search in: " directory
            
            # Run the new check_item.sh script with the parameters
            echo "Running check_item.sh with parameters '$name' and '$directory'..."
            run_script "point_7a.sh" "$name" "$directory"
            ;;

        u)
            echo "Running users.sh..."
            run_script "users.sh"
            ;;

        0)
            echo "Exiting the program."
            break
            ;;

        *)
            clear
            echo "Invalid option. Please try again."
            ;;
    esac
done