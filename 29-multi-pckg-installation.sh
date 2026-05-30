#!/bin/bash


# Installing Mutliple Packages using for loop 

for PACKAGES in nginx mysql redis python3
do
     echo "$PACKAGES Installing...."
     dnf install $PACKAGES -y
     
done

