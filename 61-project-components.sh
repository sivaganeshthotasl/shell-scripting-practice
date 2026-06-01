#!/bin/bash


COMPONENTS=("Frontend" "Catalogue" "MongoDB" "Redis" "User" "Cart" "Mysql" "Shipping" "Rabbitmq" "Payment" "Dispatch")

for COMPONENT in ${COMPONENT[@]}
do
      echo "Deploying $COMPONENT"
done

