#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[34m"
N="\e[0m"

LOG_FOLDER="/var/log/shellscript-logs"
SCRIPT_NAME="$(echo $0 | cut -d "." -f1)"
LOG_FILE="LOG_FOLDER/SCRIPT_NAME.log"

mkidr -p $LOG_FOLDER
echo " Script is executing started at $(date) " 

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
     echo -e " $R ERROR: $N Please run this script with Root User "
     exit 1
else
     echo -e " You are Running with Root User $G Successfull $N "
fi

VALIDATE(){
    if [ $1 -eq 0 ]
    then
         echo -e " $R $2 is installed..... $G Successfull $N "
    else
         echo -e " $B $2 Insgtalling is..... Failed o.. $Y Nothing to do $N "
    fi

}

for packages in "nginx" "python3" "mysql"
do
    dnf list installed $packages
    if [ $? -ne 0 ]
    then
         echo -e " $G $packages not found... Going to Install $N "
         dnf install $packages -y
         VALIDATE $? "packages"
    else echo -e " $G $packages are already installed::::: $Y nothing to do $N "
    fi
done


