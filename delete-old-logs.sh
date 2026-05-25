#!/bin/bash
########################################
# Author: Siva Ganesh Thota SL
# Script: Delete Old log Files
# Date: 25-05-2026

# Colours Formate
R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[34m"
N="\e[0m"

# Log Folder Set up
LOG_FOLDER="/var/shellscript-logs"

# Script Metadata & Log File Set Up
SCRIPT_NAME="$(echo $0 | cut -d "." -f1)"
LOG_FILE="$LOG_FOLDER/$SCRIPT_NAME.log"
# Source Directory
SOURCE_DIR="/tmp/app-logs"

# Create a dir
mkdir -p $LOG_FOLDER
echo -e "$Y The script execution started at $(date) $N" | tee -a $LOG_FILE

# Root User Validation
USER_ID=$(id -u)
if [ $USER_ID -ne 0 ]
then
     echo -e "$R ERROR: $N Please Proceed with Root User $N" | tee -a $LOG_FILE
else
     echo -e "$G You Are Running With Root User $N" | tee -a $LOG_FILE
fi

VALIDATE(){
    if [ $1 -eq 0 ]
    then
         echo -e "$G $2 is...SUCCESS $N" | tee -a $LOG_FILE
    else
         echo -e "$R $2 is...FAILED $N" | tee -a $LOG_FILE
         exit 1
    fi
}


# Find old Log Files
FILES_TO_DELETE=$(find $SOURCE_DIR -name "*.log" -mtime +14)

while IFS= read -r filepath
do
    echo -e "$Y Deleting Files $N" | tee -a $LOG_FILE
    rm -rf $filepath
    VALIDATE $? "Deleting Files"

done <<< $FILES_TO_DELETE

echo -e "$Y The Script Execution is completed succesfully $N" | tee -a $LOG_FILE


