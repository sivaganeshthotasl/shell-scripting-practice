#!/bin/bash

# Service Health Check

PACKAGE="nginx"

# While loop starts

while [ $PACKAGE -ne 0 ]
do
      echo "Status is: $PACKAGE"
      systemctl is-active $PACKAGE
done


       