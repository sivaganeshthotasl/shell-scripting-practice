#!/bin/bash

FILE_PATH="/samplenginx.txt"

COMMAND="$(grep Nginx "$FILE_PATH")

echo "$COMMAND"