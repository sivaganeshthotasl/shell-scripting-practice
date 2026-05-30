#!/bin/bash

df -hT | tail -n +2 | while read FILESYSTEM TYPE SIZE USED AVAIL USAGE MOUNTPOINT
do
       echo "Partition:  $MOUNTPOINT"
       echo "Usage: $USAGE"
done

USAGE_VALUE=$(echo $USAGE | cut -d "%" -f1)

if [ $USAGE_VALUE -gt 70 ]
then
    echo "ALERT: $MOUNTPOINT -> $USAGE"
fi





