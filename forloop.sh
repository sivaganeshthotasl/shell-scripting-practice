#!/bin/bash


USERID=$(id -u)
if [ $USERID -ne 0 ]
then
     echo " Error::You are not running with Root User"
     exit 1
else
     echo " You are running with Root User "
fi


VALIDATE(){
    if [ $1 -eq 0 ]
    then
         echo " Installing $2 is ....Successfull"
    else
         echo " Insgtalling $2 is ...Failed "
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
     echo " $2 is already installed....Nothing to do "
fi

dnf list installed python3

if [ $? -ne 0 ]
then
     echo " $2 is not found...Going to Install it "
     dnf install python3 -y
     VALIDATE $? "python3"
else
     echo " $2 is already Installed....:Nothing to do "
if

dnf list installed mysql

if [ $? -ne 0 ]
then
     echo " $2 is not found....Going to Install it "
     dnf install mysql -y
     VALIDATE $? "mysql"
else
     echo " $2 is already Installed....: Nothing to do "
fi

