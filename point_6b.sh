#!/bin/sh

# Function to install dialog if not present (for NetBSD)
install_dialog() {
    echo "Checking if dialog is installed..."

    # Check if dialog is installed
    if ! command -v dialog > /dev/null; then
        echo "dialog is not installed. Installing dialog..."

        # Use pkgin to install dialog on NetBSD
        if [ -x "$(command -v pkgin)" ]; then
            pkgin -y install dialog
        else
            echo "pkgin is not available. Please install dialog manually."
            exit 1
        fi
    else
        echo "dialog is already installed."
    fi
}

# Call the function to ensure dialog is installed
install_dialog

# Variables for the menu
HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=5
BACKTITLE="NetBSD Script Menu"
TITLE="Main Menu"
MENU="Choose one of the following options:"

OPTIONS=(
1 "Execute Script 1 (point_1.sh)"
2 "Execute Script 2 (point_2.sh)"
3 "Execute Script 3 (point_3.sh)"
4 "Exit"
)

# Display the menu using dialog
CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear

# Handle the user choice
case $CHOICE in
    1)
        echo "Running point_1.sh..."
        ./point_1.sh
        ;;
    2)
        echo "Running point_2.sh..."
        ./point_2.sh
        ;;
    3)
        echo "Running point_3.sh..."
        ./point_3.sh
        ;;
    4)
        echo "Exiting the program."
        exit 0
        ;;
    *)
        echo "Invalid option!"
        ;;
esac
