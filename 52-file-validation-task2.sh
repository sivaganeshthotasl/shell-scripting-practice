#!/bin/bash

# File Validation Check

FILE_CHECK="/tmp/text.txt"

if [ -f "$FILE_CHECK" ]
then
     echo "File "$FILE_CHECK" exists"
else
     echo "File "$FILE_CHECK" doesn't exist"
     exit 1
fi




