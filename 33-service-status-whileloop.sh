#!/bin/bash

# Service Health Check

PACKAGE="nginx"

# While loop starts
systemctl is-active $PACKAGE

while [ $PACKAGE -ne 0 ]
do
      echo "Status is: $PACKAGE"
      
done

       