#!/bin/bash

check_empty() {
    local input="$1"
    if [[ -z "$input" ]]; then
        echo "Input cannot be empty"
        return 1
    fi
}

check_num() {
    local input="$1"
    if [[ ! "$input" =~ ^[0-9]+$ ]]; then
        echo "Input must be numeric"
        return 1
    fi
}

read -p "Enter age: " age

check_empty "$age" || exit 1
check_num "$age" || exit 1

echo "Valid input received: $age"
