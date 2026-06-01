#!/bin/bash


FILE_PATH="/sourcedir"
DESTINATION_DIR="/destinationdir"
DAYS="${3:-14}"
TIME_STAMP="$(date +%F-%H-%M-%S)"
PACKAGE="zip"

FILES="$(find "$FILE_PATH" -name "*.log" -mtime +"$DAYS")"

ZIP_FILE="$DESTINATION_DIR/app-log-$TIME_STAMP.zip"

if [ -n "$FILES" ]
then
      echo "Old Log Files are zip to:"
      echo $FILES
      dnf install "$PACKAGE" -y
      find "$FILE_PATH" -name "*.log" -mtime +"$DAYS" | zip -@ "$ZIP_FILE"
      echo "Zip file created at: "$ZIP_FILE""
      # zip File Validation
      if [ -f "$ZIP_FILE" ]
      then
           echo "Zip File created is Successfully"
      else
           echo "Zip File creation is Failed"
           exit 1
      fi

      while IFS= read -r filepath
      do
           echo "deleting "$filepath""
           rm -rf "$filepath"
      done << "$FILES"

else
     echo "Files $FILES are not found"
     exit 1
fi






