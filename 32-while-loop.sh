#!/bin/bash

# Print Multiplication

NUMBER=5

while [ $NUMBER -le 50 ]
do
      RESULT=$((5*NUMBER))
      echo "5 x $NUMBER = $RESULT"

      NUMBER=$((NUMBER+1))

done

