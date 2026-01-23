#!/bin/bash
read -p "Enter threshold: " thresh
mem_info=$(free -m|grep Mem)
total=$(echo "Total memory"| cut -d' ' -f2)
used=$(echo "Used memory"| cut -d' ' -f3)
free=$(echo "free memory"| cut -d' ' -f4)
echo "Total:  ${total}"
echo "Used: ${used}"
echo "Free: ${free}"
if [ "$free" -lt "$thresh" ]; then
    echo "WARNING"
fi

