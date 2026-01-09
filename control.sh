#!/bin/bash
while true
do
    echo "1. USERNAME"
    echo "2. UPTIME"
    echo "3. DISK USAGE"
    echo "4. MEMORY USAGE"
    read -p "Enter your choice: " choice
    case $choice in
    1)
        $USER
        ;;
    2)
        uptime
        ;;
    3)
        df -h
        ;;
    4)
        free -h
        ;;
    5)
        read -p "Do you want to leave? [y/n] " ans
        case $ans in
            y|Y)
                break
                ;;
            n|N)
                echo "Returning..."
                ;;
            *)
                echo "Returning..."
                ;;
    *)
        echo "Try again"
        ;;
    esac
done

