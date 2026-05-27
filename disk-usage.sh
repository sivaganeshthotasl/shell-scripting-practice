#!/bin/bash

DISK_USAGE="$(df -hT | grep -v filesystem)"
DISK_THRESHOLD="1" # in project it will be 75 %



while IFS= read line
do
    USAGE=$(echo $line | awk '{print $6f}' | cut -d "%" -f1)
    PARTITION=$(echo $line | awK '{print $7f}')
    if [ $USAGE -ge $DISK_THRESHOLD ]
    then
         MSG="High Disk Usage on $PARTITION: $USAGE"
    fi
done <<< $DISK_USAGE

echo "$MSG"
