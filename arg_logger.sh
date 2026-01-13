#!/bin/bash
if [ $# -lt 1 ]; then
    echo "Enter message: "
    echo "USAGE: $0 message"
    exit 1
fi
mess="$1"
file="args.log"
time=$(date "+%H:%M:%S")
echo "$mess|$timw" >> "$file"

