#!/bin/bash
while true
do
    echo "MENU"
    echo "1. Show Date"
    echo "2. Show Disk Usage"
    echo "3. Show logged in Usage"
    echo "4. Show Current Directory"
    echo "5. Exit"
    read -p "Enter choice: " choice
    case $choice in
    1)
        date
        ;;
    2)
        df -h
        ;;
    3)
        free -h
        ;;
    4)
        pwd
        ;;
    5)
        break
        ;;
    *)
        "Invalid Choice"
        ::
    esac
done

