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

echo "===== MEMORY CHECK ====="

MEMORY_USAGE=$(free | awk '/Mem:/ {print int($3/$2 * 100)}')

if [ $MEMORY_USAGE -gt $MEMORY_THRESHOLD ]
then
    echo "ALERT: Memory Usage -> $MEMORY_USAGE%"
fi


echo "===== CPU CHECK ====="

CPU_USAGE=$(top -bn1 | awk '/Cpu/ {print int(100-$8)}')

if [ $CPU_USAGE -gt $CPU_THRESHOLD ]
then
    echo "ALERT: CPU Usage -> $CPU_USAGE%"
fi

