#!/bin/bash
echo "1. Memory Summary"
echo "2. Disk Sunnary"
read -p "Enter choice: " choice
case $choice in
    1)
        read -p "Enter threshold: " thresh
        mem_info=$(free -m|grep Mem)
        used=$(echo "Used" | cut -d' ' -f5)
        if [ "$used"  -gt "$thresh" ]; then
            echo "WARNING"
        else
            echo "OK"
        fi
        ;;
    2)
        read -p "Enter threshold: " dthresh
        usage=$(df -h | tail -n 1 | cut -d' ' -f5 | tr -d '%')
        if [ "$usage" -gt "$dthresh" ]; then
            echo "Warning"
        else
            echo "OK"
        fi
        ;;
    *)
        echo "Invalid choice"
        ;;
esac

