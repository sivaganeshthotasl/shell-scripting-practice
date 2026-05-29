#!/bin/bash

# Desctipion= Service Check Status

# LOG Configuration Set UP
LOG_FOLDER="/var/log/shellscript-logs"
SCRIPT_NAME="$(echo $0 | cut -d "." -f1)"
LOG_FILE="$LOG_FOLDER/$SCRIPT_NAME.log"

# LOG Folder Creation
mkdir -p $LOG_FOLDER

# Root User Validation
USER_ID="$(id -u)"
if [ $USER_ID -ne 0 ]
then
     echo "ERROR:: Please Run this Script with Root User" | tee -a $LOG_FILE
     exit 1
else
     echo "You are Running With Root User" | tee -a $LOG_FILE
fi

# Create Validate Function
VALIDATE(){
    if [ $1 -eq 0 ]
    then
         echo "$2 is....SUCCESS" | tee -a $LOG_FILE
    else
         echo "$2 is.....FAILED" | tee -a $LOG_FILE
         exit 1
    fi

}

# Installing Pakage
PACKAGE="nginx"
dnf install $PACKAGE -y &>>$LOG_FILE
VALIDATE $? "Nginx Installing"

# Service check status
systemctl status nginx &>>$LOG_FILE
if [ $? -ne 0 ]
then
     echo "ERROR::Nginx is not Running"
     systemctl enable nginx &>>$LOG_FILE
     systemctl start nginx  &>>$LOG_FILE
     VALIDATE $? "Enabling & Starting Nginx"
else
     echo "Nginx is Already Running....Active" | tee -a $LOG_FILE
fi

