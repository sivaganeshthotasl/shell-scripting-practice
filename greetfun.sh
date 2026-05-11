#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
     echo " ERROR::: Please run this scrip with Root User "
     exit 1
else
     echo " You are running with Root User "
fi


GREET(){
    
    echo "Hello Siva"

}

GREET