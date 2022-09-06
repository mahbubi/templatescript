#!/bin/bash
#Print date
date
# Calculate CPU utility in %
awk '{u=$2+$4; t=$2+$4+$5; if (NR==1){u1=u; t1=t;} else print "CPU usage (%) :"($2+$4-u1) * 100 / (t-t1) "%"; }' <(grep 'cpu ' /proc/stat) <(sleep 1;grep 'cpu ' /proc/stat)
# Calculate RAM in MB
free -m | awk 'NR==2{printf "Memory Usage: %s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }'
# Calculate Disk Root in GB
df -h | awk '$NF=="/"{printf "Disk Usage: %d/%dGB (%s)\n", $3,$2,$5}'
