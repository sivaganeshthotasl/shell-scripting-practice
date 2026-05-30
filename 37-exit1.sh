#!/bin/bash

# if Mysql install fails

PACKAGE=("mysql-server" "nginx")

dnf install $PACKAGE -y

if [ $? -ne 0 ]
then
     echo "$PACKAGE is not installed"
     exit 1
else
     echo "$PACKAGE is Installed Success"
fi

