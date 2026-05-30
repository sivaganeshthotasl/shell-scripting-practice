#!/bin/bash

# Print 1 to 10 using a Counter

COUNT=1

#Loop Condition

while [ $COUNT -le 10 ]
do
     echo "Number: $COUNT"
     COUNT=$(($COUNT+1))
done


