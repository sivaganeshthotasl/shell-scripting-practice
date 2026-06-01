#!/bin/bash


# Check whether old log files were found

FILE_PATH="/app-log"

FILES="$(find "$FILE_PATH" -name "*.log" -mtime +14)"

if [ -n "$FILES" ]
then
      echo "Files $FILES exists"
else
      echo "Files $FILES Doesn't exist"
fi

