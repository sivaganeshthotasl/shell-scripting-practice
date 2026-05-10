#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]
then
     echo " Error:: Please proceed with root user "
     exit 1
else 
     echo " You are using root user "
fi


systemctl is-active sshd

if [ $? -eq 0 ]

then

     echo " sshd service is running "
else 
     echo " sshd service is not running "
fi
