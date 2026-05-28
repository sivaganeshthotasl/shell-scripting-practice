#!/bin/bash

DISK_USAGE="$(df -hT | grep -v filesystem)"
DISK_THRESHOLD=1


while IFS= read line
do
     USAGE="$(echo $line | awk '{print $6}' | cut -d "%" -f1)"
     PARTITION="$(echo $line | awk '{print $7}')"
     if [ $USAGE -ge $DISK_THRESHOLD ]
     then
        MSG+="High Disk Usage On $PARTITION: $USAGE"
     fi


done <<< $DISK_USAGE

echo $MSG 
