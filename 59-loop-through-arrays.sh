#!/bin/bash


# Loop Through arrays
PACKAGES=("nginx" "python3" "redis")

for PACKAGE in ${PACKAGES[@]}
do
     echo "installing... $PACKAGE"
     dnf install $PACKAGE -y
     if [ $? -eq 0 ]
     then
          echo "$PACKAGE is installed Successfully"
     else
          echo "$PACKAGE Installaion...Failled"
     fi
     
done


