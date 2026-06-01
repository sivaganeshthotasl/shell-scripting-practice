#!/bin/bash

# Directory Validation
# Start with Task 1: Directory Validation and write a script that checks whether /tmp exists and prints a success/failure message.

TMP_DIR="/tmp"
if [ -d $TMP_DIR ]
then
      echo "Directory "$TMP_DIR" is exist"
fi

DESTINATION_DIR="/destination_dir"   # i haven't created destination dir so it would get that does not exist.
if [ ! -d $DESTINATION_DIR ]
then
      echo "Directory "$DESTINATION_DIR" doesn't exit"
      exit 1
fi

