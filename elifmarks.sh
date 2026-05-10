#!/bin/bash

read -p " Enter Marks : " Marks

if [ $Marks -gt 90 ]
then
     echo " Grade A "
elif [ $Marks -gt 70 ]
then
     echo " Grade B "
else
     echo " Grade C "

fi


