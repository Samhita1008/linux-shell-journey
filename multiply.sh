#!/bin/bash
read -p "Enter a number you want multiplication table for: " num
for i in $(seq 1 10); do
    echo "$num × $i = $((num*i))"
done

