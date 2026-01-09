#!/bin/bash
read -p "enter your mark" mark
if [ "$mark" -ge 80 ]; then
    echo "Grade A"
elif [ "$mark" -ge 60 ]; then
    echo "Grade B"
elif [ "$mark" ge 40 ]; then
    echo "Grade C"
else
    echo "Fail"
fi

