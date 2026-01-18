#!/bin/bash
if [ $# -ne 1 ]; then
    echo "USAGE: $0 <command>"
    exit 1
fi
log_file="bg_jobs.log"
"$@"&
pid="$1"
job_id=$(jobs -l | awk '{print $1}' | tr -d '[]')
echo "$(date '+%Y-%m-%d %H:%M:%S')|job: $job_id|PID: $pid|Command: $*" >> "$log_file"
echo "Job ID: $job_id"
echo "PID: $pid"
exit 0

