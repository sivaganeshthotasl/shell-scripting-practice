#!/bin/bash

# df -hT | tail -n +2 | while read FILESYSTEM TYPE SIZE USED AVAIL USAGE MOUNTPOINT
# do
#        echo "Partition:  $MOUNTPOINT"
#        echo "Usage: $USAGE"
# done




DISK_USAGE=$(df -hT | tail -n +2)

while  [ $DISK_USAGE ]
do
     echo "Partiion: $7"
     echo "Usage: $6"

done






