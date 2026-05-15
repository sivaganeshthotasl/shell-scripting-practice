#!/bin/bash

# Start with Colours

R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[34m"
N="\e[0m"

LOG_FOLDER="/var/log/shellscript-log"
SCRIPT_NAME="$(echo $0 | cut -d "." -f1)"
LOG_FILE="$LOG_FOLDER/$SCRIPT_NAME.log"

mkdir -p "$LOG_FOLDER"
echo -e "Script started executing at $B $(date) $N" | tee -a "$LOG_FILE"



USERID="$(id -u)"

if [ $USERID -ne 0 ]
then
     echo -e " $R ERROR:Please Run with Root User $N " | tee -a "$LOG_FILE"
     exit 1
else
     echo -e " $G You are running with Root User $N " | tee -a "$LOG_FILE"
fi

VALIDATE(){
    if [$1 -eq 0 ]
    then
         echo -e " $G $2 Installation...Successfull $N " | tee -a "$LOG_FILE"
    else
         echo -e " $R $2 Installation...Failed $N " | tee -a "$LOG_FILE"
    fi
        
}

for package in "$@"
do
     dnf list installed "$package" &>>"$LOG_FILE"
     if [ $? -ne 0 ]
     then
          echo -e " $R "$package" not found...$Y Going to Install $N " | tee -a "$LOG_FILE"
          dnf install "$package" -y &>>"$LOG_FILE"
          VALIDATE "$?" "$package"
    else
          echo -e " $Y "$package" Installed Already..... $B Nothing to do $N " | tee -a "$LOG_FILE"
    fi
done
