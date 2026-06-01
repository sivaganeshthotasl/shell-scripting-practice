#!/bin/bash


COMPONENTS=("Frontend" "Catalogue" "MongoDB" "Redis" "User" "Cart" "Mysql" "Shipping" "Rabbitmq" "Payment" "Dispatch")

for COMPONENT in ${COMPONENTS[@]}
do
      echo "Deploying $COMPONENT"
done

