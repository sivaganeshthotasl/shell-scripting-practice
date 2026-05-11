#!/bin/bash  #  #! this is called shebang


# Root user validation

USERID=$(id -u)   # () called command substitude it stores command output into variable

if [ $USERID -ne 0 ]
then
     echo " ERROR: Please Run this script with root access "
     exit 1  # stop script execution
else
     echo " You are running with root access "
fi

VALIDATE(){
     if [ $1 -eq 0 ]
then
     echo " Installing $2 is......Successfull "
else
     echo " Installing $2 is.......Failure "
     exit 1
fi
}

#Package installation Validation calling function
dnf list installed mysql

if [ $? -ne 0 ]
then
     echo " Mysql is not installed...... going to install it "
     dnf install mysql -y
     VALIDATE $? "mysql"
else
     echo " Mysql is already installed:: Nothing to do "
fi

dnf list installed python3

if [ $? -ne 0 ]
then
     echo " Python 3 is not installed... Going to install it "
     dnf install python3 -y
     VALIDATE $? "python3"
else
     echo " Python3 is already install... Nothing to do "
fi

dnf list installed nginx
if [ $? -ne 0 ]
then
     echo " Ngninx is not installed...... going to install "
     dnf install nginx -y
     VALIDATE $? "nginx"
else
     echo " Nginx is already installed.......Nothing to do "

fi

