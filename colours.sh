#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
     echo " \e[31m ERROR:: you are not running script with root user "
else
     echo " \e[32m You are running with Root user "
fi

echo -e " \e[31m Hello Red Colur "

echo " Hello No Colour "

