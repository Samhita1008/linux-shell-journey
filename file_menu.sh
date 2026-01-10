#!/bin/bash
while true
do
    echo "1. View File"
    echo "2. Add Content"
    echo "3. Exit"
    read -p "Enter filename: " file
    if [ ! -f "$file" ]; then
        echo "Doesnt exist"
        exit 1
    fi
    read -p "Enter choice" choice
    case $choice in
        1)
            cat $file
            ;;
        2)
            read -p "Enter Contents: " con
            echo ""$con" >> "$file
            ;;
        3)
            echo "Bye!"
            break
            ;;
        *)
            echo "Invalid Option"
            ;;
        esac
done
