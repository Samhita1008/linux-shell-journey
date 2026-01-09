#!/bin/bash
read -p "enter your username: " name
if id "$name" &>/dev/null; then
    echo "exists"
else
   echo  "doesnt exist"
fi

