#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[34m"
N="\e[0m"

LOG_FOLDER="/var/log/shellscript-logs"
SCRIPT_NAME="$(echo $0 | cut -d "." -f1)"
LOG_FILE="$LOG_FOLDER/$SCRIPT_NAME.log"

mkdir -p $LOG_FOLDER
echo -e " Script started executing at $B $(date) $N "

USERID=$(id -u)
if [ $USERID -ne 0 ] 
then
     echo -e " $R Error $N ::You are not running with Root User " | tee -a $LOG_FILE
     exit 1
else
     echo " You are running with Root User $G Successfull $N " | tee -a $LOG_FILE
fi


VALIDATE(){
    if [ $1 -eq 0 ]
    then
         echo -e " Installing $B $2 is .... $G Successfull $N " | tee -a $LOG_FILE
    else
         echo -e " Insgtalling $B $2 is ... $R Failed $N " | tee -a $LOG_FILE
         exit 1
    fi 
}

dnf list installed nginx

if [ $? -ne 0 ]
then
     echo " $2 is not found...Going to Install it "
     dnf install nginx -y &>>$$LOG_FILE
     VALIDATE $? "nginx"
else
     echo -e " $B $2 $N is already installed.... $Y Nothing to do $N " | tee -a $LOG_FILE
fi

dnf list installed python3

if [ $? -ne 0 ]
then
     echo -e " $2 is not found...$G Going to Install it $N "
     dnf install python3 -y &>>$$LOG_FILE
     VALIDATE $? "python3"
else
     echo -e " $2 $N is already Installed....: $Y Nothing to do $N "  | tee -a $LOG_FILE
fi

dnf list installed mysql

if [ $? -ne 0 ]
then
     echo -e " $2 is not found....$G Going to Install it $N "
     dnf install mysql -y &>>$LOG_FILE
     VALIDATE $? "mysql"
else
     echo -e " $2 $N is already Installed....: $Y Nothing to do $N " | tee -a $LOG_FILE
fi

