#!/bin/bash

read -p " Enter Marks : " Marks

if [ $Marks >= 90 ]
then
     echo " Grade A "
elif [ $Marks >= 70 ]
then
     echo " Grade B "
else
     echo " Grade C "

fi


