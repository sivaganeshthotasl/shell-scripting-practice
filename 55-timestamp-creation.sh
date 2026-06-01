#!/bin/bash

# Time Stamp Creation and create a zip file with the name time stamp

FILE_PATH="/app-log"
DESTINATION_DIR="/destinationdir"
DAYS="${3:-14}"

FILES="$(find "$FILE_PATH" -name "*.log" -mtime +"$DAYS")"
TIME_STAMP="$(date +%F-%H-%M-%S)"
ZIP_FILE="$DESTINATION_DIR/app-log-$TIME_STAMP.zip"

if [ -n "$FILES" ]
then
     echo "Old Logs are found"
     echo "$FILES"
     find "$FILE_PATH" -name "*.log" -mtime +$DAYS | zip -@ "$ZIP_FILE"
     echo "Zip file created: $ZIP_FILE"
else
     echo "Files $FILES are not found"
     exit 1
fi



