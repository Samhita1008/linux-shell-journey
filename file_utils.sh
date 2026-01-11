#!/bin/bash
list_files() {
    ls
}
create_files() {
    read -p "Enter the filename you want to create: " file
    touch $file
}
delete_files() {
    echo " Enter the filename you want to delete: " filee
    if [! -f "$filee" ]; then
        echo "File doesnt exist"
        exit 1
    fi
    rm $filee
}
while true
do
    echo "1. List files"
    echo "2. Create files"
    echo "3. Delete files"
    echo "4. Exit"
    read -p "Enter you choice: " choice
    case $choice in
    1)
        list_files
        ;;
    2)
        create_files
        ;;
    3)
        delete_files
        ;;
    4)
        echo "Bye"
        break
        ;;
    *)
        echo "Invalid option"
        ;;
    esac
done

