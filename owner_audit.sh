#!/bin/bash
current_user=$(whoami)
found=0
for file in *
do
    [ -e "$file" ] || continue
    if [ ! -O "$file" ]; then
        echo "$file not owned by $current_user"
        found=1
    fi
done
if [ "$found" -eq 0 ]; then
    echo "All files are owned by $current_user"
fi

