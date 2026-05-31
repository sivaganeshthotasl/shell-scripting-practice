#!/bin/bash

# Addition of two command-line arguments
ADDITION=$(( $1 + $2 )) # $(( )) used for arthematic operation

echo "ADDITION= "$ADDITION""


# Run:
# sh script.sh 10 20
# OR
# ./script.sh 10 20

# $1 = 10
# $2 = 20
# ADDITION = 30


# $1 → First argument
# $2 → Second argument
# $(( )) → Used for arithmetic operations in shell scripting