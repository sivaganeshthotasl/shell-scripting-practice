#!/bin/bash

# Print Multiplication

NUMBER=1

while [ $NUMBER -le 5 ]
do
      RESULT=$((5*NUMBER))
      echo "5 x $NUMBER = $RESULT"

      NUMBER=$((NUMBER+1))

done


