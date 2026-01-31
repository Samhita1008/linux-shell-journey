#!/bin/bash
dir="/tmp"
filee="cleanup.log"
find "$dir" -type f -mtime +3 2>/dev/null | while read file
do
    echo "$(date '+%Y-%m-%d %H:%M:%S')" >> "$filee"
    echo "File deleted: $file" >> "$filee"
    rm -f "$file"
done
echo "Cleanup ended.." >> "$filee"

