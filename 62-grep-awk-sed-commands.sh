#!/bin/bash

# search the Nginx in the file

FILE_PATH="/samplenginx.txt"

COMMAND="$(grep nginx "$FILE_PATH")"

echo "$COMMAND"

# Remove File System Header

vCOMMAND="$(df -hT | grep -v Filesystem)

echo "$vCOMMAND"


