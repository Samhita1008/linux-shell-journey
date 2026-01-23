#!/bin/bash
timestamp$(date '+%Y-%m-%s %H:%M:%S')
usage=$(df -h| grep "/"| tail -n 1| tr -s ' '| cut -d' ' -f5)
echo "${timestamp} and disk usage: ${usage}" >> "disk.log"

