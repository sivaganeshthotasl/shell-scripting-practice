#!/bin/bash

DISK_USAGE="$(df -hT | grep -v filesystem)"
DISK_THRESHOLD="1" # in project it will be 75 %



while IFS= read line
do
     USAGE=$(echo "$line" | awk '{print $6f}' | cut -d "%" -f1)
     PARTITION=$(echo "$line" | awk '{print $7f}')
     echo "$PARTITION: $USAGE"

done >>> $DISK_USAGE
