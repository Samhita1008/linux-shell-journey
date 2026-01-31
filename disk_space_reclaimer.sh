#!/bin/bash
logfile="cleanup.log"
dlt_file="/tmp/trash.txt"
read -p "Enter directory to scan: " dir
read -p "Enter age in days: " age

if [! -d "$dir" ]; then
    echo "Directory entered is not found"
    exit 1
fi

echo "Scanning directory $dir..." >> "$logfile"
echo "Finding files older than $age.." >> "$logfile"
find "$dir" -type f \(-name "*.log" -o -name "*.tmp" -o -name "*.cache"\) >> "$dlt_file"

if [! s "$dlt_file" ]; then
    echo "No such files found"
    exit 0
fi

size=0
while read file
do
    sizee=$(du -k "$file" | cut -f1)
    size=$((size+sizee))
done < "$dlt_txt"
read -p "Proceed deletion? [y/n]: " ans

if [ "$ans" != "y" ]; then
    echo "Cleanup cancelled"
    exit 0
fi

echo "Cleanup  started...$(date)" >> "$logfile"
while read file
do
    echo "$(date '+%Y-%m-%d %H:%M:%S'), deleted file: $file" >> "$logfile" 
    rm -f "$file"
done < "$dlt_file"

echo "Cleaning done...$(date)" >> "$logfile"
rm -f "$dlt_file"

echo "Cleanup completed successfullyyy" >> "$logfile"
