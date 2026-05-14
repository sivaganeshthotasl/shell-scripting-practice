#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[34m"
N="\e[0m"



USERID=$(id -u)
if [ $USERID -ne 0 ]
then
     echo -e " $R Error $N ::You are not running with Root User "
     exit 1
else
     echo " You are running with Root User $G Successfull $N "
fi


VALIDATE(){
    if [ $1 -eq 0 ]
    then
         echo -e " Installing $2 is .... $G Successfull $N "
    else
         echo -e " Insgtalling $2 is ... $R Failed $N "
         exit 1
    fi 
}

dnf list installed nginx

if [ $? -ne 0 ]
then
     echo " $2 is not found...Going to Install it "
     dnf install nginx -y
     VALIDATE $? "nginx"
else
     echo -e " $B $2 is already installed.... $Y Nothing to do $N "
fi

dnf list installed python3

if [ $? -ne 0 ]
then
     echo -e " $2 is not found...$G Going to Install it $N "
     dnf install python3 -y
     VALIDATE $? "python3"
else
     echo -e " $2 is already Installed....: $Y Nothing to do "
fi

dnf list installed mysql

if [ $? -ne 0 ]
then
     echo -e " $2 is not found....$G Going to Install it $N "
     dnf install mysql -y
     VALIDATE $? "mysql"
else
     echo -e " $2 is already Installed....: $Y Nothing to do "
fi

