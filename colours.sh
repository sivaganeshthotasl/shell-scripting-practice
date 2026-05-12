#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
     echo -e " \e[31m ERROR:: you are not running script with root user "
     exit 1
else
     echo -e " \e[32m You are running with Root user "
fi

echo -e " \e[31m Hello Red Colur \e[0m "

echo " Hello No Colour "

