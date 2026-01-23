#!/bin/bash
echo "Disk Usage Report"
usage=$(df -h| tail -n 1| cut -d' ' -f5| tr -d '%')
echo "Disk Usage= ${usage}%"


