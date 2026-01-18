#!/bin/bash
if [ $# -ne 1 ]; then
    echo "USAGE: $0 <process_name>"
    exit 1
fi
process="$1"
pids=$(pgrep "$process")
if [ -z "$pids" ]; then
    echo "No, $process not running"
    exit 2
else
    echo "Yes, $process running"
    echo "PIDS: $pids"
    exit 0
fi

