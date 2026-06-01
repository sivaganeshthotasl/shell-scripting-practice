#!/bin/bash

# Directory Validation
# Start with Task 1: Directory Validation and write a script that checks whether /tmp exists and prints a success/failure message.

TMP_DIR="/tmps"
if [ -d $TMP_DIR ]
then
      echo "Directory "$TMP_DIR" is exist"
fi

if [ ! -d $TMP_DIR ]
then
      echo "Directory "$TMP_DIR" doesn't exit"
      exit 1
fi

