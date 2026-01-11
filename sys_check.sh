#!/bin/bash
usrename() {
    echo "Usernzme: $USER"
}
up_time() {
    uptime
}
disk_usage() {
    df -h
}
memory_usage() {
    free -h
}
while true
do
    echo "1. Username"
    echo "2. Uptime"
    echo "3. Disk Usage"
    echo "4. Memory Usage"
    echo "5. Exit"
    read -p "Choose your Choice: " choice
    case $choice in
    1)
        username
        ;;
    2)
        up_time
        ;;
    3)
        disk_usage
        ;;
    4)
        memory_usage
        ;;
    5)
        echo "Bye"
        break
        ;;
    *)
        echo "Invalid option"
        ;;
    esac
done 
