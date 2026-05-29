#!/bin/bash

# Description= Service Check Status

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

# # Installing Package
PACKAGE="nginx"
dnf install "$PACKAGE" -y &>>$LOG_FILE
VALIDATE $? ""$PACKAGE" Installing"

# Service check status
systemctl is-active "$PACKAGE" &>>$LOG_FILE
if [ $? -ne 0 ]
then
     echo "ERROR::"$PACKAGE" is not Running"
     systemctl enable "$PACKAGE" &>>$LOG_FILE
     systemctl start "$PACKAGE"  &>>$LOG_FILE
     VALIDATE $? "Enabling & Starting "$PACKAGE""
else
     echo ""$PACKAGE" is Already Running....Active" | tee -a $LOG_FILE
fi

