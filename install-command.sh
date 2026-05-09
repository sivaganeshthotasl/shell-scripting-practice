#!/bin/bash


userid=( id -u )

if [ $userid -eq 0 ]
then
     echo " Error:: Please proceed with root user "
     
else
     echo " you are running with root user "
fi


dnf install mysql -y

if [ $? -eq 0 ]
then
     echo " Installing Mysql is ..... Successfull "
else
     echo " Installing Mysql is ..... Failure "
     exit 1
fi