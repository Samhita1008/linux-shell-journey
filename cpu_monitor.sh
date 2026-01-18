#!/bin/bash
if [ $# -ne 0 ]; then
    echo "USAGE: <process_name>"
    exit 1
fi
threshold="$1"
log_file="cpu_alert.log"
echo "Checking processes more than $threshold% CPU"
ps -eo pid, comm,%cpu --no-header | while read pid name cpu
do
    cpu_int=${cpu%.*}
    if [ "$cpu_int" -gt "$threshold" ]; then
        echo "PID: $pid | Process: $name | CPU: $cpu_int%" >> "$log_file"
    fi
done
exit 0

