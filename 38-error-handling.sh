#!/bin/bash

# Errot Handling using Validation Function

# package variable
PACKAGE="nginx"


VALIDATE(){
    if [ $1 -eq 0 ]
    then
         echo "$2 is....SUCCESS"
    else
         echo "$2 is....FAILED"
         exit 1
    fi
}

# install any package for example. and check if that package installed then print the package already installed else not installed going to install.

if dnf list installed $PACKAGE
then
     echo "$PACKAGE is already installed...Nothing to do"
else
     echo "$PACKAGE is not installed..Going to Install"
     dnf install $package -y
     VALIDATE $? "Nginx Installing"
fi

