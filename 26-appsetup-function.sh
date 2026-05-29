#!/bin/bash



APP_NAME="catalogue"

LOG_FOLDER="/var/log/shellscript-logs"
SCRIPT_NAME="$(echo $0 | cut -d "." -f1)" 
LOG_FILE=""$LOG_FOLDER"/$SCRIPT_NAME.log"

# Create Log Folder
mkdir -p $LOG_FOLDER


CHECK_ROOT(){
    USER_ID="$(id -u)"
    if [ $USER_ID -ne 0 ]
    then
         echo "ERROR: Please Run this Script with Root User" | tee -a $LOG_FILE
         exit 1
    else
         echo "You are Running with Root User" | tee -a $LOG_FILE
    fi
}

# Calling Function
CHECK_ROOT

VALIDATE(){
    if [ $1 -eq 0 ]
    then
         echo "$2 is....SUCCESS" | tee -a $LOG_FILE
    else
         echo "$2 is.....FAILED" | tee -a $LOG_FILE
         exit 1
    fi

}

# Creating App set up function
APP_SETUP(){
    id roboshop
    if [ $? -ne 0 ]
    then
         useradd --system --home /app --shell /sbin/nologin --comment "roboshop sytem user" roboshop &>>$LOG_FILE
         VALIDATE $? "Creating $APP_NAME user"
    else
         echo "robosho user already exist....Skipping" | tee -a $LOG_FILE
    fi

    mkdir -p /app
    VALIDATE $? "Creating Application Directory"
    
    ARTIFACT_URL="curl -o /tmp/$APP_NAME.zip https://roboshop-artifacts.s3.amazonaws.com/$APP_NAME-v3.zip" &>>$LOG_FILE
    VALIDATE $? "Downloading $APP_NAME File into /tmp Directory"
    
    cd /app
    unzip -o /tmp/$APP_NAME.zip &>>$LOG_FILE
    VALIDATE $? "Extracting $APP_NAME files"

}

# Calling Function
APP_SETUP