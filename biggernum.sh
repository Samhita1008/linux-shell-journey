#!/bin/bash
read -p "enter a number: " a
read -p "enter another number: " b
if [ $a -gt $b ]; then
    echo "$a is greater than $b "
elif [ $a -eq $b ]; then
    echo "they are equal"
else
    echo "$a iz lesser than $b"
fi

