#!/bin/bash

# Package Install Validation

# Logs Configuration Set Up

LOG_FOLDER="/var/log/shellscript-logs"
SCRIPT_NAME="$(echo $0 | cut -d "." -f1)"
LOG_FILE="$LOG_FOLDER/$SCRIPT_NAME.log"

# Create a Log Directory to store sttdin and sttdout logs
mkdir -p $LOG_FOLDER

# Root User Validation
USER_ID="$(id -u)"
if [ $USER_ID -ne 0 ]
then
     echo "ERROR: Please Run this Scritp with Root User"
     exit 1
else
     echo "You are Running with Root User"
fi

# VALIDATE FUNCATION
VALIDATE(){
    if [ $1 -eq 0 ]
    then
         echo "$2 is........SUCCESS" | tee -a $LOG_FILE
    else
         echo "$2 is........FAILED" | tee -a $LOG_FILE
         exit 1
    fi
}

# Installing Nginx.
PACKAGE="nginx"
dnf install $PACKAGE -y &>>$LOG_FILE
VALIDATE $? "Nginx is installing"

