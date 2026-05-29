#!/bin/bash

# Reusable Validate Function

# Check Root User Validation

USER_ID="$(id -u)"
if [ $USER_ID -ne 0 ]
then
     echo "ERROR: Please Run This Script with Root User"
     exit 1
else
     echo "You Are Running With Root User"
fi


# Create Validate Function

VALIDATE(){
    if [ $1 -eq 0 ]
    then
         echo "$2 is....SUCCESS"
    else
         echo "$2 is.....FAILED"
         exit 1
    fi

}

# To check Validate function install nginx and redis packages. i am using here array variables instead creating two saperate package name variables.

# PACKAGES=("nginx" "redis")

# for PACKAGE in "${PACKAGES[@]}"
# do
#     dnf install $PACKAGE -y
#     VALIDATE $? "$PACKAGES Installing"
# done

# Note Run sh script.sh nginx reids   > it installs both packages and validate successfully installed or not.


# The other option is you can just simply give packages names like

dnf install nginx -y
VALIDATE $? "Nginx Installing"
dnf install redis -y
VALIDATE $? "Redis Installing"
