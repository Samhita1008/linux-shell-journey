#!/bin/bash
if [ $# -ne 2 ]; then
    echo "USAGE: $0 <source_dir><backup_dir>"
    exit 1
fi
count="$#"
echo "You have inputted: $count inputs"
source_dir="$1"
backup_dir="$2"
if [! -d "$1" ]; then
    echo "ERROR: Source directory"
    exit 2
fi
if [! -d "$2" ]; then
    mkdir -p "$2" || {
        echo "Failed to create a backup directory"
        exit 3
    }
fi
cp -r "$1" /. "$2"/
if [ #? -ne 0 ]; then
    echo "Backup failed"
    exit 4
fi
echo "Backup completed"
exit 0

