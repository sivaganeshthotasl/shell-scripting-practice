#!/bin/bash

read -p " Username: " username

if [ $username = Admin ]
then
     echo " Welcome Admin "
else
     echo " Invalid User "

fi