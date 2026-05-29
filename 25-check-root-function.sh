#!/bin/bash

# Create Check root function to reusable in multiple scripts instade of writing multiple root user validation.

CHECK_ROOT(){
    USER_ID="$(id -u)"
    if [ $USER_ID -ne 0 ]
    then
         echo "ERROR: Please Run this Script with Root User"
         exit 1
    else
         echo "You are Running with Root User"
    else
}

# Calling Check Root Function
CHECK_ROOT