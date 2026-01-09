#!/bin/bash
while true
do
    echo "1. List files"
    echo "2. Create files"
    echo "3. Delete files"
    echo "4. Exit"
    read -p "Enter your choice: " choice
    case $choice in
    1)
        ls
        ;;
    2)
        read -p "Enter file name to create: " file
        touch $file
        ;;
    3)
        read -p "Enter filename to delete: " filw
        rm $filw
        ;;
    4)
        break
        ;;
    *)
        echo "Inavlid Option"
        ;;
    esac
done

