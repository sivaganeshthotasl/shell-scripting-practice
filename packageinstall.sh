#!/bin/bash

#Please check ROOT User Validation

USERID=(id -u)

if [ $USERID -ne 0 ]
then
     echo " ERROR:: You are not running this script using ROOT User "
     exit 1
else
     echo " You are running this script Using Root User "
fi

VALIDATE(){
    if [ $1 -eq 0 ]
    then
         echo " Installing $2 is ..... Successfull "
    else
         echo " Installing $2 is ...... Failed "
         exit 1
    fi

}

dnf list installed mysql

if [ $? -ne 0 ]
then
     echo " Mysql is not installed..... Going to install "
     dnf install mysql -y
     VALIDATE $? "mysql"
else
     echo " Mysql is already installed... Nothing to do "
fi
 