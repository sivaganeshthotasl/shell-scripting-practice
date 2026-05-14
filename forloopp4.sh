#!/bin/bash

# Installing packages using for loop

for package in nginx mysql
do
dnf install $package -y
if [ $? -eq 0 ]
then
     echo -e " \e[34m $package \e[0m is installed \e[32m Successfull \e[0m "
else
     echo -e " \e[34m $package \e[0m installation is \e[31m Failed \e[0m "
fi
done
