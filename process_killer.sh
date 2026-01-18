#!/bin/bash
if [ $# -ne 0 ]; then
    echo "USAGE: <process_name>"
    exit 1
fi
process="$1"
pids=$(pgrep "$process")
if [ -z "pids" ]; then
    echo "No running process found"
    exit 2
fi
ps -fp "$pids"
echo "Are you sure you want to continue?"
echo "1. Yes"
echo "2. No"
read -p "Enter your choice: " choice
case $choice in
    1)
        echo "Killing processes..."
        kill "$pids"
        ;;
    2)
        echo "Cancelling Operation"
        exit 3
        ;;
    *)
        echo "Invalid choice.."
        exit 4
        ;;
esac
sleep 1
if pgrep "$process" > /dev/null; then
    echo "Failed to kill some processes"
    exit 5
else
    echo "Killed succesfully"
    exit 0
fi

