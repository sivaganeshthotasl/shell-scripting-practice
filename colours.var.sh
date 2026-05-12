#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

USERID="$(id -u)"

if [ $USERID -ne 0 ]
then
     echo " $R ERROR::: You are not running this script with Root User $N "
     exit 1
else
     echo " $G You are running with Root User $N "
fi

VALIDATE(){
    if [ $1 -eq 0 ]
    then
          echo " $G Installing $2 is.....Successfull $N "
    else
          echo " $R Installing $2 is......Failed $N"
          exit 1
    fi

}

dnf list installed mysql

if [ $? -ne 0 ]
then
     echo " $R Mysql is not installed..... Going to Install $N "
     dnf install mysql -Y
     VALIDATE $? "mysql"
else
     echo " $Y Mysql is already installed.... Nothing to do $N "
fi

dnf list installed python3

if [ $? -ne 0 ]
then
     echo " $R Python3 is not installed..... Going to install it $N "
     dnf install python3 -Y
     VALIDATE $? "python3"
else
     echo $Y Python3 is already installed....NOthing to do $N "
fi

dnf list installed nginx

if [ $? -ne 0 ]
then
     echo " $R Nginx is not installed......Going to install it $N "
     dnf install nginx -y
     VALIDATE $? "nginx"
else
     echo " $Y Nginx is already installed....Nothing to do $N "
fi