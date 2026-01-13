#!/bin/bash
if [ $# -lt 1 ]; then
    echo "Please enter numbers:"
    echo "USAGE: $0 <num1><num2>..."
    exit 1
fi
sum=0
for arg in "$@"
do
    if [[ "$arg"=~^-?[0-9]+$ ]]; then
        sum=$((sum+arg))
    else
        echo "Ignoring non numeric: $arg"
    fi
done
echo "Sum is: $sum"
exit 0

