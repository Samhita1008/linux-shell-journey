#!/bin/bash
read -p "enter disk usage threshold(%)" thresh
usage=$(df/|tail -1|awk'{gsub("%","",$5);print $5}')
if [  "$usage" -ge "$threshold" ]; then
    echo "WARNING: DISK USAGE IS AT ${uaage}%"
else
    echo "DISK USAGE IS SAFE"
fi

