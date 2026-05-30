#!/bin/bash

df -hT | tail -n +2 | while read FILESYSTEM TYPE SIZE USED AVAIL USAGE MOUNTPOINT
do
       echo "Partition:  $MOUNTPOINT"
       echo "Usage: $USAGE"
done











