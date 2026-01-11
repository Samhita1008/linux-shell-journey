#!/bin/bash
logfile="app.log"
write_log() {
    read -p "Enter content you want to write inside the file: " con
    echo "[ $(date "+%Y-%m-&d %H:%M:%S") ] $con" >> "$logfile"
    echo "Success"
}
view_log() {
    if [! -f "$logfile" ]; then
        echo "File doesnt exist"
        exit 1
    fi
    if [! -s "$logfile" ]; then
        echo "File is empty"
        return
    fi
    cat "$logfile"
}
while true
do
    echo "1. Write logfile"
    echo "2. View logfile"
    echo "3. Exit"
    read -p "Enter choice" choice
    case $choice in
    1)
        write_log
        ;;
    2)
        view_log
        ;;
    3)
        echo "Bye"
        break
        ;;
    *)
        echo "Invalid option"
        ;;
    esac
done

