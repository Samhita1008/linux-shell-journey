#!/bin/bash
zombies=$(ps -eo pid,ppid,stat,comm | awk '$3~/z/')
count=$(echo "$zombies" | grep -c)
if [ "$count" -gt 0 ]; then
    echo "DISCLAIMER: ZOMBIES DETECTED!"
    exit 1
else
    echo "No Zombie process found"
    exit 0
fi

