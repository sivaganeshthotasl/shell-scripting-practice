#!/bin/bash

# zip the old file which has 14 day age to destination dir 
# Delete the Old Files from the source dir

#Start with Directory Variable
SOURCE_DIR="/sourcedir/sourceapp_dir"
DESTINATION_DIR="/destinationdir"
DAYS="${3:-14}"

# Validate if source dir exist
if [ ! -d "$SOURCE_DIR" ]  # d means directory exists.
then
     echo "Source Directory "$SOURCE_DIR" doesn't exist"
     exit 1
fi

# Validate if destination Dir exist
if [ ! -d "$DESTINATION_DIR" ]
then
     echo "Destination Dir "$DESTINATION_DIR" doesn't exist"
     exit 1
fi

# Find LOG files older then 14 days from source directory
FILES="$(find "$SOURCE_DIR" -name "*.log" -mtime +$DAYS )"


if [ -n "$FILES" ]
then
       echo "Files are zip to.."
       # print list of selected file to backup
       echo "$FILES"
       # Generate time statmp for zip file name
       TIME_STAMP="$(date +%F-%H-%M-%S)"
       # Create zip file path using destination directory and timestamp
       ZIP_FILE="$DESTINATION_DIR/app-log-$TIME_STAMP.zip"
       # Pass log files to zip command using find command and pipe
       find "$SOURCE_DIR" -name "*.log" -mtime +$DAYS | zip -@ "$ZIP_FILE"
       echo "zip files are created at: $ZIP_FILE"
       # check wheter zip exist or not
        if [ -f $ZIP_FILE ]
        then 
             echo "Zip files are created successfully"
             while IFS= read -r filepath
             do
                 echo "Deleting more than 14 days old log files: $filepath"
                 rm -rf $filepath
             done <<< $FILES
        else
             echo "Zip files are not created successfully"
             exit 1
        fi
       
else
      echo "No Log Files found older then $DAYS days...Skipping"
fi




