#!/bin/bash 

echo "=== Memory usage ====="
free -h 

echo ""
echo " ==== Disk Usage ===="
df -h --total | grep total 

echo ""
echo "==== CPU usage ==="
top -bn1 | grep "Cpu(s)"

echo ""
echo  "=== Top 5 processes by CPU usage ==="
ps aux --sort=-%cpu | head -6

echo ""
echo "=== Top 5 processes by memory usage ==="
ps aux --sort=-%mem | head -6
