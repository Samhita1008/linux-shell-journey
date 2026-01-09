#!/bin/bash
read -p "enter a directory to find: " dir
if [ -d "$dir" ]; then
    echo "directory you typed exist"
else
   echo "doesnt exist"
fi

