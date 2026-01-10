#!/bin/bash
file="expenses.txt"
read -p "Enter Expense Name: " name
read -p "Enter Amount: " amount
if ! [[ "$amount"=~[0-9]+$]]; then
    echo "Writw in Numeric! Try again!"
    exit 1
fi
echo "$name - $amount" >> "$file"
echo "Successful"

