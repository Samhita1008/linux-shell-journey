#!/bin/bash
log_file="/var/log/dys_heal.sh"
date="$(date '+%Y-%m-%d %H:%M:%S')"
disk_usage="$(/bin/df -h --output=source,pcent,target | /usr/bin/tail -n+2 | /bin/grep -v filesystem)"
mem_usage="$(/usr/bin/free -h | /usr/bin/grep '^Mem:')"
read_Mem_total Mem_used Mem_free Mem_shared Mem_buff Mem_cache Mem_available <<< "$mem_usage"
upti="$(usr/bin/uptime -p)"
{
    echo "Date: $date"
    echo "Disk Usage: $disk_usage"
    echo "Total Usage: $Mem_total"
    echo "Used Usage: $Mem_usage"
    echo "Free Memory: $Mem_free"
    echo "Shared Memory: $Mem_shared"
    echo "Available Memory: $Mem_available"
    echo "Uptime: $upti"
}

