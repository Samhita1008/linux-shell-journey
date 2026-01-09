#!/bin/bash
read -p "enter filename: " file
if [ !e "$file" ]; then
   echo "doesnt exist"
   exit 1
fi
if [ -r "$file" ]; then
    echo "readable"
else
    echo "not readable"
fi
if [ -w "$file" ]; then
    echo "writable"
else
    echo "not writable"
fi
if [ -x "$file" ]; then
    echo "executable"
else
    echo "not executable"
fi

