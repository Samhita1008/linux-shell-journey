#!/bin/bash
echo "Sensitive file permissions audit.." 
echo "Scan time: $(date '+%Y-%m-%d %H:%M:%S')"
check_file() {
    file="$1"
    expected="$2"
    if [ -e "$file" ]; then
        echo "Please enter file name!"
        exit 1
    fi
    actual=$(stat -c "%a" "$file")
    if [ "$expected" -eq "$actual" ]; then
        echo "Safe!"
    else
        echo "WARNING!!"
    fi
}
check_file /etc/passwd
check_file /etc/shadow
check_file /etc/group

