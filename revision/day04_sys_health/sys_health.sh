#!/bin/bash
echo "-----SYSTEM HEALTH DASHBOARD-----"
echo ""

echo "Date:"
date
echo ""

echo "Disk Usage:"
df -h
echo ""

echo "Memory Usage:"
free -h
echo ""

echo "CPU Load:"
uptime
echo ""

echo "Uptime"
uptime -p
echo ""

sleep 5