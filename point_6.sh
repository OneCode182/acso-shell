#!/bin/sh
# Menu Shell script using case statement with execution permission checks

# Function to display the menu options
show_menu() {
    echo "----------------------------"
    echo " Menu - Choose an option:"
    echo "----------------------------"
    echo "1. Execute Script 1 (point_1.sh)"
    echo "2. Execute Script 2 (point_2.sh)"
    echo "3. Execute Script 3 (point_3.sh) - Requires 2 parameters"
    echo "4. Exit"
    echo "----------------------------"
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
            echo "Exiting the program."
            break
            ;;
        *)
            clear
	    echo "Invalid option. Please try again."
	    ;;
    esac
done
