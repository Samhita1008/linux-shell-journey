#!/bin/bash
read -sp "enter password" pass
len=$(#pass)
if [ "$len" -lt 6 ]; then
    echo "WEAK"
elif [ "$len" -le 9 ] && [ "$len" -gt 6 ]; then
    echo "MEDIUM"
else
    echo "STRONG"
fi

