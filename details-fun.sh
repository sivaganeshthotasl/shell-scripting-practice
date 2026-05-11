#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
     echo "ERROR::: You are not running this script with Root User"
else
     echo " You are running with Root User "
fi

# Multiple Arguments
DETAILS(){
    echo " "$1" is working as "$2" "

}

DETAILS Siva Devops