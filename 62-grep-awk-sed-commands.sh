#!/bin/bash

# search the Nginx in the file

FILE_PATH="/samplenginx.txt"

COMMAND="$(grep nginx "$FILE_PATH")"

echo "$COMMAND"

# Remove File System Header

VCOMMAND="$(df -hT | grep -v Filesystem | awk '{print $0}')"

echo "$VCOMMAND"

