#!/bin/bash

DISK_THRESHOLD=1

df -hT | awk 'NR>1 {print $6, $7}' | while read -r USAGE PARTITION
do
    USAGE=$(echo "$USAGE" | cut -d "%" -f1)

    if [ "$USAGE" -ge "$DISK_THRESHOLD" ]
    then
        echo "High Disk Usage on $PARTITION: $USAGE%"
    fi
done
