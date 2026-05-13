#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[34m"
N="\e[0m"

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
     echo -e " $R ERROR::: $B You are not running this script with Root User $N "
     exit 1
else
     echo -e " $G You are running with $G Root User $N "
fi 

VALIDATE(){
    if [ $1 -ne 0 ]
    then
         echo " $2 Is installing $G SUCCESS $N "
    else
         echo " $2 Is Installing $R FAILURE $N "
    fi

}

dnf list installed nginx

if [ $? -ne 0 ]
then
     echo -e " $2 is $R Not Found...$Y Going to Install $N "
     dnf install nginx -y
     VALIDATE $? "nginx"
else
    echo -e " $2 is Already Installed::: $Y Nothing to do $N "
fi
