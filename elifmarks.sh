#!/bin/bash

read -p " Enter Marks : " Marks

if [ $Marks -ge 90 ]
then
     echo " Grade A "
elif [ $Marks -ge 70 ]
then
     echo " Grade B "
else
     echo " Grade C "

fi


