#!/bin/bash
if [ $# -lt 1 ]; then
    echo "Please enter filename: "
    echo "USAGE: $0 <filename>"
    exit 1
fi
file="$1"
echo "File: $file exists"
[ -r "$file" ] && echo "Readable" || echo "Not Readable"
[ -w "$file" ] && echo "Writable" || echo "Not Writable"
[ -x "$file" ] && echo "Executable" || echo "Not Executable"
echo "Thank you"

