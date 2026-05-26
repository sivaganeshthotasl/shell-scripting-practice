#!/bin/bash

# Define Clour Varibles
R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[34m"
N="\e[0m"

# Read command line arguments
SOURCE_DIR="$1"   # Source directory
DESTINATION_DIR="$2"  #  Destination directory
DAYS="${3:-14}" # Optional days value with default as 14

# Configure Log Folder Path
LOG_FOLDER="/var/log/shellscript-logs"
# Get Script Name Dynamically
SCRIPT_NAME="$(echo $0 | cut -d "." -f1)"
# Configure Log File patch using script name
LOG_FILE="$LOG_FOLDER/$SCRIPT_NAME.log"
# Create Log Folder if it does not exist
mkdir -p $LOG_FOLDER

# Root User Validation Check (Get user id and validate whether script is running with root user)
USER_ID="$(id -u)"
if [ $USER_ID -ne 0 ]
then
      echo -e "$R ERROR: $N Please Proceed with Root User" | tee -a $LOG_FILE
      exit 1
else
      echo -e "$Y You are Running with Root User $N" | tee -a $LOG_FILE
fi

# Create Validate Function
VALIDATE(){
     if [ $1 -eq 0 ]
     then
           echo -e "$G $2 is....SUCCESS $N" | tee -a $LOG_FILE
     else
           echo -e "$R $2 is....FAILED $N" | tee -a $LOG_FILE
           exit 1
     fi
}

# Create Usage Function (show how to execute script properly)
USAGE(){
     echo -e "$B sh backup.sh <source_dir> <destination_dir> <days (otptional)>" | tee -a $LOG_FILE

}

#  Validate minimum required arguments are passed
if [ $# -lt 2 ]
then
     USAGE
fi

# Validate Source Dir exist 
if [ ! -d $SOURCE_DIR ]
then
      echo "$R Souce Directory $SOURCE_DIR $N doest not exist" | tee -a $LOG_FILE
      exit 1
fi

# Validate Destination Dir Exist
if [ ! -d $DESTINATION_DIR ]
then
      echo -e "$R Destination Directory $DESTINATION_DIR $N does not exist" | tee -a $LOG_FILE
      exit 1
fi

# Find LOG files older then 14 days from source directory
FILES="$(find $SOURCE_DIR -name "*.log" -mtime +$DAYS)" &>>$LOG_FILE

# Check whether log files are available 
if [ -n "$FILES" ]
then
      echo " File to zip are : "
      #Print list of files selected for backup
      echo "$FILES"
      # Generate timestamp for zip file name
      TIME_STAMP="$(date +%F-%H-%M-%S)"
      # Create zip file path using destination directory and timestamp
      ZIP_FILE="$DESTINATION_DIR/app-logs-$TIME_STAMP.zip"
      # Pass log files to zip command using find command and pipe
      find "$SOURCE_DIR" -name "*.log" -mtime +$DAYS | zip -@ $ZIP_FILE &>>$LOG_FILE   
      VALIDATE $? "Zipping Log Files" # Validate zip command execution status
      # Print success message with zip file location
      echo -e "$G zip files are created at:$N $ZIP_FILE"  | tee -a $LOG_FILE 
      # check wheter zip exist or not
      if [ -f "$ZIP_FILE" ]
      then
            echo -e "$G Successfully Created Zip File $N"
            # Remove Old Files
            while IFS= read -r filepath
            do
                echo "Deleting file: $filepath" | tee -a $LOG_FILE
                rm -rf "$filepath"
                VALIDATE $? "deleting files"
            done <<< "$FILES"
          
     else
            echo -e "Zip File Creation Failure: $R Failure $N"
     fi
else   
     # Handle no-files condition
      echo -e "$Y No Log Files found older then $DAYS days...Skipping $N" | tee -a $LOG_FILE # Print skipping message if no old log files found
fi





