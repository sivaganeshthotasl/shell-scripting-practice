#!/bin/bash


# Loop through arguments inside the script

# for PACKAGES in nginx redis mysql-server
# do
#      echo "Installing $PACKAGES"
# done

# Loop through arguments passing from the script
USAGE(){
    if [ $# -eq 0 ]
    then
        echo "Usage: sh "$0" <package name1> <package name2>"
        exit 1
    fi
}

USAGE

for PACKAGES in "$@"   
do
     echo "Installing $PACKAGES"
done



