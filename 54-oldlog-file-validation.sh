#!/bin/bash


# Check whether old log files were found

FILE_PATH="/app-log"

FILES="$(find "$FILE_PATH" -name "*.log" -mtime +14)"

if [ -n "$FILES" ] # -z means check whether files are not empty
then
      echo "Files $FILES exists"
else
      echo "Files $FILES Doesn't exist"
fi

