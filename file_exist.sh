#!/bin/bash
read -p "enter a filename: " file
if [ -f "$file" ]; then
   echo "then file exists"
else
   echo "doesnt exist"
fi

