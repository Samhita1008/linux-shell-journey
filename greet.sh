#!/bin/bash
if [ $# -lt 1 ]; then
    echo "Please enter your name!"
    echo "Usage: $0 <name>"
    exit 1
fi
name="$1"
echo "Hello! $name..Welcome back!"

