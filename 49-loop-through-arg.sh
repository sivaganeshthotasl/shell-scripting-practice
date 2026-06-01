#!/bin/bash


# # Loop through arguments inside the script

# # for PACKAGE in nginx redis mysql-server
# # do
# #      echo "Installing "$PACKAGE""
#        dnf install "$PACKAGE"
# # done

# Loop through arguments passing outside from the script


USAGE(){
    if [ $# -eq 0 ]
    then
        echo "Usage: sh "$0" <package name1> <package name2>"
        exit 1
    fi
}
# Meaning:
# if no arguments passed
# stop script

# Call the function if the argument not passed 
USAGE "$@"   #  This passes all script arguments to the function.

for PACKAGE in "$@"   
do
     echo "Installing "$PACKAGE""
     dnf install "$PACKAGE" -y
done



