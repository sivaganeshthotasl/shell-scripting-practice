#!/bin/bash

# Colours Formate
R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[34m"
N="\e[0m"


SOURCE_DIR="$1"
DISTNATION_DIR="$2"
DAYS="${3:-14}" # if days are provided that will be considered, otherwise daualt in 14 days.

LOG_FOLDER="/var/log/shellscript-logs"
SCRIPT_NAME="$(echo $0 | cut -d "." -f1)"
LOG_FILE="$LOG_FOLDER/$SCRIPT_NAME.log"

mkdir -p $LOG_FOLDER

# Root User Validation
USER_ID="$(id -u)"
if [ $USER_ID -ne 0 ]
then
     echo -e "$R ERROR: $N Please Procced with Root User"
     exit 1
else
     echo -e "$G You are Running With Root User $N"
fi

VALIDATE(){
    if [ $1 -eq 0 ]
    then
         echo -e "$G $2 is....Success $N"
    else
         echo -e "$R $2 is....Failed $N"
         exit 1
    fi
}

USAGE(){
    echo -e "$R USAGE: $N sh backup.sh <source_dir> <destination_dir> <days(optional)>"
    exit 1
}

if [ $# -lt 2 ]
then
    USAGE
fi

if [ ! -d "$SOURCE_DIR" ]
then
     echo -e "$R Source Directory $SOURCE_DIR does not exist $N Please check"
     exit 1
fi

if [ ! -d "$DESTINATION_DIR" ]
then
     echo -e "$R Destination Directory $destination_dir does not exist $N Please Check"
fi


FILES=$(find $SOURCE_DIR -name "*.log" -mtime +$DAYS)

if [ ! -z $FILES ]
then
     echo "Files to zip are: $FILES"

else
     echo -e "$R No Files Found Older then 14 days..Skipping $N"
     exit 1

fi







