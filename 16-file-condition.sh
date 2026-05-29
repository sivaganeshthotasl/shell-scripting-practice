#!/bin/bash

# Check whether File exits /etc/passwd

# Create a File path Varialbe
FILE_PATH="/etc/passwdd"

# Check wheter file extis

if [ -f $FILE_PATH ]
then
     echo "File is Already Exist"
else
     echo "File is doesn't Exist"
fi

