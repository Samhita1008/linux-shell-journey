log_file="/var/log/cleaup_cron.log"
date="$(date '+%Y-%m-%d %H:%M:%S')"
if [! -f "$file" ]; then
    echo "This file doesnt exist"
    exit 1
fi
last_modified="$(/bin/stat -c %y "$log_file" | cut -d '' f1)
if [ "$last_modified" != "$date" ]; then
    echo "WARNING: Not updated!"
fi
echo "Yes, No worries"
exit 0

