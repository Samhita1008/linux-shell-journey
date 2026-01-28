#!/bin/bash
log_file="world_writable.log"
>"$log_file"
echo "Scanning world writable files..."
echo "Scan time: $(date '+%Y-%m-%d %H:%M:%S')"
find / -type f -perm 002 2>/dev/null >> "$log_file"
count=$(grep -c "/" "$log_file")
echo "Total number of world writable files are: $count" >> "$log_file"
echo "Scan Completed" >> "$log_file"
