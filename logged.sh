#!/bin/bash
users=$( whoami | awk '{print$1}')
for user in $users; do
    echo "$user"
done

