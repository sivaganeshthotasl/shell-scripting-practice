#!/bin/bash


# Logging and Error Handling together

# LOG configuraton
LOG_FOLDER="/var/log/shellscript-log"
SCRIPT_NAME"$(echo $0 | cut -d "." -f1)"
LOG_FILE=""$LOG_FOLDER"/"$SCRIPT_NAME".log"

trap 'echo "ERROR Occured at line $LINENO"' ERR

mkdir -p "$LOG_FOLDER"

# Error Handling using VALIDATE FUNCTION

VALIDATE(){
    if [ $1 -eq 0 ]
    then
         echo "$2 is....SUCCESS" | tee -a $LOG_FILE
    else
         echo "$2 is....FAILED" | tee -a $LOG_FILE
    fi

}

dnf install nginxw -y &>>$LOG_FILE  # i given wrong package so we can see the error how validate is handling as well as how error logging will help us troubleshoot.
VALIDATE $? "Nginx Installing"  
