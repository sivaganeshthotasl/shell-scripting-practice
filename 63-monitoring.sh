#!/bin/bash

# Disk Memory and CPU Monitoring script

DISK_THRESHHOLD="1"
MEMORY_THRESHHOLD="1"
CPU_THRESHHOLD="1"

echo "======Disk Check========="

df -hT | awk 'NR>1 {print $6 $7}' | while read USAGE MOUNTPOINT
do
     USAGE_VALUE="$(echo $USAGE | cut -d "%" -f1)"
     if [ "$USAGE_VALUE" -ge "$DISK_THRESHHOLD" ]
     then 
          echo "ALERT: "$USAGE" -> "$MOUNTPOINT""
    fi
done



