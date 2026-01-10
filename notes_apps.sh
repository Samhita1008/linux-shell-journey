#!/bin/bash
read -p "Enter your contents: " con
file="notes.txt"
echo "$con" >> "$file"
echo "Saved!"

