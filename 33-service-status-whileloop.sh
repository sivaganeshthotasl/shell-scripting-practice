#!/bin/bash

# Check if nginx is active

# PACKAGE="nginx"

# STATUS="$(systemctl is-active $PACKAGE)"

# while [ "$STATUS" != "active" ]
# do
#       echo ""$PACKAGES" is not running"
#       sleep 1

#       STATUS="$(systemctl is-active $PACKAGE)"
# done

# echo ""$PACKAGE" is...RUNNING"


PACKAGE="nginx"
COUNT=1

while [ $PACKAGE -le 5 ]
do
       STATUS="$(systemctl is-active nginx)"
       echo "Attempt $COUNT : $STATUS"
       COUNT="$(($COUNT+1))"
done
