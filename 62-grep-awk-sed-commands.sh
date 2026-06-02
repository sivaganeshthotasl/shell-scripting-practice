#!/bin/bash

# search the Nginx in the file

FILE_PATH="/samplenginx.txt"

COMMAND="$(grep Nginx "$FILE_PATH")"

echo "$COMMAND"

