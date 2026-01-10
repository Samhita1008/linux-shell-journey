#!/bin/bash
read -p "Enter filename: " file
if [ ! -f "$file" ]; then
    echo "Doesnt exist"
    exit 0
fi
if [ ! -s "$file" ]; then
    echo "Empty"
    exit 0
fi
echo "Your Notes: "
while read line
do
    echo "$line"
done < "$file"

