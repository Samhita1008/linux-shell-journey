#!/bin/bash
while true
do
    echo "------FILE MANAGER------"
    echo "1. List files"
    echo "2. Create file"
    echo "3. Delete file"
    echo "4. Copy file"
    echo "5. Move file"
    echo "6. Rename file"
    echo "7. Exit"

    read -p "Enter your choice: " ch

    case $ch in
        1)
            ls
            ;;
        2)
            read -p "Enter filename to create: " fname
            touch $fname
            ;;
        3)
            read -p "Enter filename to delete: " fnamee
            rm $fnamee
            ;;
        4)
            read -p "Enter source file: " sname
            read -p "Enter destination file: " dname
            cp $sname $dname
            ;;
        5)
            read -p "Enter source file: " snamee
            read -p "Enter destination file: " dnamee
            mv $snamee $dnamee
            ;;
        6)
            read -p "Enter old filename: " oname
            read -p "Enter new filename: " nname
            mv $oname $nname
            ;;
        7)
           echo "Byee!"
           break
           ;;
        *)
           echo "Try again!"
           ;;
    esac
done


