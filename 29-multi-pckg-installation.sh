#!/bin/bash


# Installing Mutliple Packages

for PACKAGES in nginx mysql redis python3
do
     echo "$PACKAGES Installing...."
     dnf install $PACKAGES -y
     
done

