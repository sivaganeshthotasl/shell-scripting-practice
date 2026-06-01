#!/bin/bash

# identifying old log files in the /app-log

FILE_PATH=/app-log

FILES="$(find "$FILE_PATH" -name "*.log" -mtime +14)"
echo "$FILES"