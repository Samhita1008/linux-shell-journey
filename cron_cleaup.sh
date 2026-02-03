#!/bin/bash
log_file="/var/log/cleaup_cron.log"
date="$(date '+%Y-%m-%d %H:%M:%S')"
script="/var/local/tmp_cleaup.sh"
"$script" >> "$log_file"
"$date" >> "$log_file" 2>&1

