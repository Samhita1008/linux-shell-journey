#!/bin/bash
c=0
if [ $# -lt 1 ]; then
    echo "please enter directory"
    echo "USAGE: $0 <directory>"
    exit 1
fi
dir="$1"
if [ ! -e "$file ]; then
    echo "Directory not exists"
for file in $dir/*:
do
    if [ -x "$file" ] && echo "$file Executable"; then
        ((c++))
    fi
done
echo "count: $c"
if [ $c -eq 0 ]; then
    echo "No executable files available"
fi
