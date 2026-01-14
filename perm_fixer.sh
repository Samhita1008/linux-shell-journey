#!/bin/bash
if [ $# -lt 1 ]; then
    echo "Pleae enter file/directory"
    echo "USAGE: $0 <file/directory>"
    exit 1
fi
target="$1"
if [! -e "$target" ]; then
    echo "File/directory doesnt exist"
    exit 2
fi
if [ -f "$target" ]; then
    chmod 644 "$target"
    echo "File permissions set for $target"
    exit 0
fi
if [ -d "$target" ]; then
    chmod 755 "$target"
    echo "Directory permissions are set for $target"
    exit 0
fi
echo "Unsupported file type"
exit 3

