#!/bin/bash

# Root User validation

USERID=$(id -u)  # () command substitude is used for store command output to variable

if [ $USERID -ne 0 ]
then
     echo " ERROR::: Please run this script with root user "
     exit 1
else
     echo " you are running with root user "
fi

VALIDATE(){
    if [ $1 -eq 0 ]
    then
          echo " Installing $2 is...... Successfull "
    else
          echo " Installing $2 is......Failed "
          exit 1
    fi
     
}

dnf list installed mysql

if [ $? -ne 0 ]
then
     echo " Mysql is not insalled.....: going to install "
     dnf install mysql -y
     VALIDATE $? "mysql"
else
     echo " Mysql is already installed::: nothing to do "
fi

dnf list installed python3
if [ $? -ne 0 ]
then
     echo " Python3 is not installed::: Going to Install "
     dnf install python3 -y
     VALIDATE $? "python3"
else
     echo " Python3 is already installed::: Nothing to do "
fi

dnf list installed nginx

if [ $? -ne 0 ]
then
     echo " nginx is not installed:::: Going to install Nginx "
     dnf install nginx -y
     VALIDATE $? "nginx"
else
     echo " Nginx already installed::: Nothing to do "
fi

