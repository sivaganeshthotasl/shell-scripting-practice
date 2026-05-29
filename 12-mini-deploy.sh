#!/bin/bash

#Now Combine Evertying.

COMPONENT="nginx"

# Logs Setup
LOG_FOLDER="/var/log/shellscript-logs"
SCRIPT_NAME="$(echo $0 | cut -d "." -f1)"
LOG_FILE="$LOG_FOLDER/$SCRIPT_NAME.log"

# Create Log Folder
mkdir -p $LOG_FOLDER

echo "Deploying "$COMPONENT".........."

dnf install $COMPONENT -y  &>>$LOG_FOLDER

# Print Success Statement
echo ""$COMPONENT" installing is.......SUCCESS"

