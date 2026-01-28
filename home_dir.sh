#!/bin/bash
echo "Home directory permission audit"
echo "Date and time: $(date '+%Y-%m-%d %H:%M:%S')"
for dir in /home/*
do
    [ -d "$dir" ] || continue
    user=$(basename "$dir")
    if [ -r "$dir" ] && [ "$(stat -c "%a" "$dir" | cut -c3)" -ge 4 ]; then
        echo "World readable: $dir, User: $user"
    fi
    if [ -w "$dir" ] && [ "$(stat -c "%a" "$dir" | cut -c3)" -ge 2 ]; then
        echo "World Writable: $dir, User: $user"
    fi
done

