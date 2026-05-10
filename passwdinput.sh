#!/bin/bash

read -p " Password:  " Password

if [ $Password = devops ]
then
     echo " Login Successfull "
else
     echo " Wrong Password "
fi