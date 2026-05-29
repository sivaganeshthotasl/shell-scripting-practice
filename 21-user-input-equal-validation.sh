#!/bin/bash

# User Input Validation

echo "Enter Environment:"
read ENVIRONMENT

if [ $ENVIRONMENT = "prod" ]
then
     echo "Deploying to....Production"
else
     echo "Deploying to....Dev"
fi

