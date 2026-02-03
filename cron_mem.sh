#!/bin/bash
log_file="/var/log/mem_monitor.log"
date="$(date '+%Y-%m-%d %H:%M:%S')"
mem_info="$(/usr/bin/free -h | /usr/bin/grep '^Mem:')"
read_total used free shared buff_cache available << "$mem_info"
echo "$date | $total | $used | $used | $free" >> "$log_file"

