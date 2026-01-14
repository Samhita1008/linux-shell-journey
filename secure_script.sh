#!/bin/bash
if [ $# -lt 1 ]; then
    echo "Please enter script name:"
    echo "USAGE: $0 <script_user>"
    exit 1
fi
script="$1"
if [ ! -f "script" ]; then
    echo "file doesnt exist"
    exit 2
fi
if [ ! -O "$script" ]; then
    echo "Not owned by the owner"
    exit 3
fi
if [ -w "$script" ] && [! -O "$script" ]; then
    echo "SECURITY ERROR: Writable by everyone"
    exit 4
fi
if [ ! -x "$script" ]; then
    echo "ERROR: Not Executable"
    exit 5
fi

