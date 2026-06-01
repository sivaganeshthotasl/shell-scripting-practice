#!/bin/bash

# Time Stamp Creation

FILE_PATH="/app-log"
DESTINATION_DIR="/destinationdir"
DAYS="${3:-14}"

FILE="$(find $FILE_PATH -name "*.log" -mtime +$DAYS)"

TIME_STAMP="$(date +%F-%H-%M-%S)"


ZIP_FILE="$DESTINATION_DIR/app-log-$TIME_STAMP.zip"

find $FILE_PATH -name "*.log" -mtime +$DAYS | zip -@ $ZIP_FILE

echo "zip files are created at: $DESTINATION_DIR"