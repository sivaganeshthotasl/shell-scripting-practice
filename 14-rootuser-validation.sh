#!/bin/bash

# Root User Validation

USER_ID="$(id -u)"  # User id Variable
if [ $USER_ID -ne 0 ]
then
     echo "Please Run this Script with Root User"
else 
     echo "Script is Running With Root User"
fi



