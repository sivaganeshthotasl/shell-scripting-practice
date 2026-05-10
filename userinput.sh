#!/bin/bash

read -p "  Enter your Age:  " age

if [ $age -gt 18 ]
then
     echo " Adult "
else 
     echo " Minor "
fi

