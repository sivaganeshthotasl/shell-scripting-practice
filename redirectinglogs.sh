#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOG_FOLDER="/var/log/shellscript-logs"
SCRIPT_NAME="$(echo $0 | cut -d "." -f1)"
LOG_FILE="$LOG_FOLDER/$SCRIPT_NAME.log"

mkdir -p "$LOG_FOLDER"
echo " Script started executing at: $(date)" | tee -a $LOG_FILE

USERID="$(id -u)"

if [ $USERID -ne 0 ]
then
     echo -e " $R ERROR::: You are not running this script with Root User $N " | tee -a $LOG_FILE
     exit 1
else
     echo -e " $G You are running with Root User $N " | tee -a $LOG_FILE
fi

VALIDATE(){
    if [ $1 -eq 0 ]
    then
          echo -e " Installing $2 is..... $G Successfull $N " | tee -a $LOG_FILE
    else
          echo -e " Installing $2 is...... $R Failed $N " &>>$LOG_FILE | tee -a $LOG_FILE
          exit 1
    fi

}

dnf list installed mysql &>>$LOG_FILE

if [ $? -ne 0 ]
then
     echo -e " $R Mysql is not installed..... Going to Install $N " | tee -a $LOG_FILE
     dnf install mysql -y &>>$LOG_FILE
     VALIDATE $? "mysql"
else
     echo -e " $Y Mysql is already installed.... Nothing to do $N " | tee -a $LOG_FILE
fi

dnf list installed python3 &>>$LOG_FILE

if [ $? -ne 0 ]
then
     echo -e " $R Python3 is not installed..... Going to install it $N " | tee -a $LOG_FILE
     dnf install python3 -y &>>$LOG_FILE
     VALIDATE $? "python3"
else
     echo -e " $Y Python3 is already installed....NOthing to do $N " | tee -a $LOG_FILE
fi

dnf list installed nginx &>>$LOG_FILE

if [ $? -ne 0 ]
then
     echo -e " $R Nginx is not installed......Going to install it $N " | tee -a $LOG_FILE
     dnf install nginx -y &>>$LOG_FILE
     VALIDATE $? "nginx"
else
     echo -e " $Y Nginx is already installed....Nothing to do $N " | tee -a $LOG_FILE
fi
