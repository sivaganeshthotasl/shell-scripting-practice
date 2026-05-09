#!/bin/bash


userid=$(id -u)

if [ $userid -ne 0 ]
then
     echo " Error:: Please proceed with root user "
     exit 1
else
     echo " you are running with root user "
fi

dnf list installed mysql

if [ $? -ne 0]
then
     echo " Mysql is not installed ..... so going to install it "
     dnf install mysql -y
if [ $? -eq 0 ]
then 
     echo " Install Mysql ...... is Successfull "
else
     echo " installing mysql is ::::: Failure "
     exit 1
else
     echo " Mysql is already install:: nothing to do "
     
fi

# dnf install mysql -y

# if [ $? -eq 0 ]
# then
#      echo " Installing Mysql is ..... Successfull "
# else
#      echo " Installing Mysql is ..... Failure "
#      exit 1
# fi

