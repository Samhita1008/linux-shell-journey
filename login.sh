#!/bin/bash
logfile="login.log"
read -p "Enter you Username: " user
date=$(date +"%Y-%m-%d")
time=$(date +"%H:%M:%S")
echo "$user|$date|$time" >> "$logfile"

