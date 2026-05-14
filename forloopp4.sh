#!/bin/bash

# Installing packages using for loop

LOG_FOLDER="/var/log/shellscript-logs"
SCRIPT_NAME="$(echo $0 | cut -d "." -f1)"
LOG_FILE="$LOG_FOLDER/$SCRIPT_NAME.log"

mkdir -p "$LOG_FOLDER"
echo " script started executed at $(date) " | tee -a $LOG_FOLDER


USERID=$(id -u)
if [ $USERID -ne 0 ]
then
     echo " You are not using root user to run this script " | tee -a $LOG_FOLDER
     exit 1
else
     echo " you are running with root user " | tee -a $LOG_FOLDER
fi


for package in nginx mysql 
do
dnf install $package -y &>>$LOG_FOLDER
if [ $? -eq 0 ]
then
     echo -e " \e[34m $package \e[0m is installed \e[32m Successfull \e[0m " | tee -a $LOG_FOLDER
else
     echo -e " \e[34m $package \e[0m installation is \e[31m Failed \e[0m " | tee -a $LOG_FOLDER
     exit 1
fi
done
