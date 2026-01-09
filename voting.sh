#!/bin/bash
read -p "enter your age" age
if [ $age -ge 18 ]; then
    echo "eligible"
else
    echo "not eligible"
fi

