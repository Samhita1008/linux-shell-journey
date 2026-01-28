#!/bin/bash
rep="sec_rep.sh"
iss=0
echo "Security Audit Summary" >> "$rep"
echo "Scan time: $(date '+%Y-%m-%d %H:%M:%S')" >> "$rep"
rep_check() {
    script="$1"
    des="$2"
    echo "Running: $des" >> "$rep"
    output=$(bash "$1")
    if [ -n "$output" ]; then
        echo "$output" >> "$rep"
        iss=$((iss+1))
    else
        echo "No issues found"
    fi
}
rep_check "./home_dir.sh" "Home directory Audit"
rep_check "./suid_sgid.sh" "SGID/SUID check"
rep_check "./perm_audit.sh" "Sensitive file Permissions check"
if [ "$iss" -eq 0 ]; then
    echo "No Issues Found!" >> "$rep"
else
    echo "WARNING! Issues found! Total $iss found!" >> "$rep"
fi
