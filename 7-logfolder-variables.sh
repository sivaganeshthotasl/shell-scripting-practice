#!/bin/bash

# Create Log Folder Variables

LOG_FOLDER="/var/log/shellscript-logs"
SCRIPT_NAME="$(echo $0 | cut -d "." -f1)"
LOG_FILE=""$LOG_FOLDER"/$SCRIPT_NAME.log"

# Print Log File Path

echo "$LOG_FILE"