#!/bin/bash
read -p "Enter threshold: " thresh
if [[ "$thresh"=~^[0-9]+$ ]]; then
    echo "Invalid. Enter a Number"
    exit 1
fi
df -h| grep '^dev'| while read line
do
    filesystem=$(echo "$line"|cut -d' ' -f1)
    usage=$(echo "$line"|cut -d' ' -f5| tr -d '%')
    if [ "$usage" -gt "$thresh" ]; then
        echo "Warning"
    fi
done


