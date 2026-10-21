#!/bin/bash
#16. Write a menu driven program to display the following options:
# Contents of /etc/passwd
# List of output of ‘who’
# Present working directory
# Exit
while :
do
    clear
    echo "Menu Driven Program"
    echo "=============================="
    printf "\nSELECT YOUR OPTION\n"

    echo "1. Contents of /etc/passwd"
    echo "2. List of output of 'who'"
    echo "3. Present working directory"
    echo "4. Exit from program"

    echo "=============================="
    echo "Enter your menu choice [1-4]: "
    read choice

    case $choice in

        1)
            cat /etc/passwd
            read -p "Press any key to continue..."
            ;;

        2)
            whoami
            read -p "Press any key to continue..."
            ;;

        3)
            pwd
            read -p "Press any key to continue..."
            ;;

        4)
            echo "Quitting..."
            exit
            ;;

        *)
            echo "Invalid option"
            read -p "Press any key to continue..."
            ;;
    esac
done
