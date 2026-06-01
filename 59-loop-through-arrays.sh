#!/bin/bash


# Loop Through arrays
PACKAGES=("nginx" "python3" "redis")

for PACKAGE in ${PACKAGES[@]}
do
     echo "installing... $PACKAGE"
done


