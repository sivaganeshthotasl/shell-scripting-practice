#!/bin/bash

# Service Monitoring check

SERVICES=("nginx" "sshd")

for SERVICE in ${SERVICES[@]}
do
    systemctl is-active "$SERVICE"
    # check whether the service is active or not
    if [ $? -ne 0 ]
    then
         echo "Service is $SERVICE not Active"
         systemctl start "$SERVICE"
         if [ $? eq 0 ]
         then
              echo "Starting $SERVICE ...ACTIVATED"
         fi
         
    else
         echo "Service is $SERVICE is already in Active..Skipping"
    fi
done
