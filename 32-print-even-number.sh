#!/bin/bash

# Print Even Number 2 to 20

EVEN_NUMBER=2

# While Loop Starts

while [ $EVEN_NUMBER -le 20 ]
do
       echo  "$EVEN_NUMBER"
       EVEN_NUMBER="$(($EVEN_NUMBER+2))"

done

