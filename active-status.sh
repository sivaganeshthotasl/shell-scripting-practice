#!/bin/bash


systemctl is-active sshd

if [ $? -eq 0 ]

then

     echo " sshd service is running "
else 
     echo " sshd service is not running "
fi
