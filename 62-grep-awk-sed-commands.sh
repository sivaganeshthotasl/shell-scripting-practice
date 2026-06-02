#!/bin/bash

# search the Nginx in the file

FILE_PATH="/samplenginx.txt"

COMMAND="$(grep nginx "$FILE_PATH")"

echo "$COMMAND"

