#!/bin/bash

# String Equal Condition

# String Variable

NAME="$1" 

# echo "Your Name is:" # Setting up User input

# read NAME   # read is used to store user input 

#NAME="SIVA"
if [ "$NAME" = "Siva Ganesh Thota SL" ]
then
      echo "Names Are Matching....."
else
      echo "Names Are Not Matching....."
fi

