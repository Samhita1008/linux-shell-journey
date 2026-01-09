#!/bin/bash
read -p "enter a directory: " dir
if [ !-d "$dir" ]; then
    echo "directory doesnt exist"
    exit 1
fi
for file in "$dir"/*; do
    echo "$(basename "$file")"
    if [ -r "$file" ]; then
        echo "Readable"
    else
        echo "Not Readable"
    fi
    if [ -w "$file" ]; then
        echo "Writeable"
    else
        echo "Not Writable"
    fi
    if [ -x "$file" ]; then
        echo "Executable"
    else
        echo "Not Executable"
    fi
done

