#!/bin/bash

read -p " Your Age : " age

if [ $age -gt 18 ]
then
     echo " Can Vote "
else
     echo " Cannot Vote "
fi


