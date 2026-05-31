#!/bin/bash

# Errot Handling using Validation Function

# package variable
PACKAGE="nginx"
LOG_FOLDER="/var/log/shellscript-logs"
SCRIPT_NAME="$(echo $0 | cut -d "." -f1)"
LOG_FILE=""$LOG_FOLDER"/"$SCRIPT_NAME".log"

mkdir -p "$LOG_FOLDER"


VALIDATE(){
    if [ $1 -eq 0 ]
    then
         echo "$2 is....SUCCESS" | tee -a $LOG_FILE
    else
         echo "$2 is....FAILED" | tee -a $LOG_FILE
         exit 1
    fi
}

# install any package for example. and check if that package installed then print the package already installed else not installed going to install.

if dnf list installed $PACKAGE
then
     echo "$PACKAGE is already installed...Nothing to do" | tee -a $LOG_FILE
else
     echo "$PACKAGE is not installed..Going to Install" | tee -a $LOG_FILE
     dnf install $package -y &>>$LOG_FILE
     VALIDATE $? "Nginx Installing"
fi

