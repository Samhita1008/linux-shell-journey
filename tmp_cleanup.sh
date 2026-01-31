#!/bin/bash
dir="/tmp"

count=0
find "$dir" -type f -mtime +3 2>/dev/null | while read file
do
    echo "File: $file"
    count=$((count+1))
done
echo "Count is: $count"

