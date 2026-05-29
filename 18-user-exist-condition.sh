#!/bin/bash

# Description = Check if User Exist

# Root Uer Validation
USER_ID=$(id -u)
if [ $USER_ID -ne 0 ]
then
     echo "ERROR:: Please Run this Script with Root User"
     exit 1
else
     echo "You are Running with Root User"
fi

VALIDATE(){
    if [ $1 -eq 0 ]
    then
         echo "$2 is....SUCCESS"
    else
         echo "$2 is....FAILED"
         exit 1
    fi
}

USER_ID="$(id roboshop)"

if [ "$USER_ID" -ne 0 ]
then
     echo "ERROR::"$USER_ID" is Doesn't Exit"
    useradd roboshop
else
     echo "$USER_ID is already Exit....Skpping"
fi



