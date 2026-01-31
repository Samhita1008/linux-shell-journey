#!/bin/bash
echo "Scan time and date: $(date '+%Y-%m-%d %H:%m:%s')"
find /var/log -type f -name "*.log" -mtime +7 2>/dev/null | while read file
do
    echo "$file"
    echo "size: $(du -h "$file" | cut -f1)"
    echo "Last modified date: $(stat -c $file)"
done
echo "End time $(date '+%Y-%m-%d %H:%M:%S')"

