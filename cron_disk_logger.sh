#!/bin/bash
log_file="/var/log/disker.log"
Date="$(date '+%Y-%m-%d %H:%M:%S')"
/bin/df -h --output=source,pcent,target | /user/bin/tail -n+2 | while read filesystem,usage,mount
do
    echo "$Date | $Filesystem | $usage" >> "$log_file"
done

