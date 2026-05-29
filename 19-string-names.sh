#!/bin/bash

# String Equal Condition

# String Variable

#NAME="$1"

echo "Your Name is:"

read NAME

if [ "$NAME" = "Siva" ]
then
      echo "Names Are Matching....."
else
      echo "Names Are Not Matching....."
fi

