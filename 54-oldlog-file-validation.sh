#!/bin/bash


# Check whether old log files were found

FILE_PATH="/app-log"

FILES="$(find "$FILE_PATH" -name "*.log" -mtime +14)"

if [ -n "$FILES" ] # -n means check whether files are not empty
then
      echo "Old $FILES Found"
else
      echo "Old $FILES not found"
      exit 1
fi

LOGS=""

if [ -z "$LOGS" ] # -z means check whether file are empty
then
     echo "Old $LOGS are not found"
     exit 1
else
     echo "Logs $LOGS exist"
fi

