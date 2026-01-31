#!/bin/bash
read -p "Enter directory: " dir
read -p "Enter minimum file size: " size
if [! -d "$dir" ]; then
    echo "Directory entered not found"
    exit 1
fi
find "$dir" -type f -size +"$size" 2>/dev/null | while read file
do
    echo "File: $file"
    echo "Size: $(du -h $dir)"
done | sort -hr

