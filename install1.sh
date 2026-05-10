#!/bin/bash


USERID=$(id -u)

if [ $USERID -ne 0 ]
then
     echo " Error:: Please proceed with root user "
else
     echo " You are using Root User "
     exit 1
fi

dnf list installed mysql

if [ $? -ne 0 ]
then
     echo " Mysql is not installed..... going to Install"
     dnf install mysql
     
if [ $? -eq 0 ]
then
     echo " Mysql is installing...... Successfull "
else
     echo " Installing Mysql::::::: Failure "
     exit 1
fi

else
     echo " Mysql is already installed::: Nothing to do "
fi






     