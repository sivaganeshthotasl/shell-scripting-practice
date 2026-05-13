#!/bin/bash

#Why colours are User

#Normally terminal outpu looks plain like

# Installatino Completed
# Installation Failed
# Server Down

#so we use colours to highlight those. lets begin 

echo -e "Hello You are in \e[31m Danger \e[0m"

#Break the syntax

# -e === enabling Escape Characters 
#example
echo "Hello \e[32m Ganesh You have \e[32m Successfully Completed \e[0m"

#output shows
# Hello \e[32m Ganesh You have \e[32m Successfully Completed \e[0m

#with -e
echo -e "Hello Ganesh You are going to Complete shell scripting \e[32m Successfully \e[0m"  # you will see the exact output now.


# what \e = it tells to terminal special Formating is starting now.

# what is 31m = this is actual colour code.

#Lets create some colours code using some colour codes

echo -e " This Is \e[31m RED \e[0m C0lour "    # what is \e[0m means it resets everthing back to normal colour.
echo -e " This Is \e[32m Green \e[0m Colour "  # \e[0m it means it resets everthing back to normal colour. 
echo -e " This is \e[33m Yellow \e[0m Colour " # \e[0m is means it resets everything back to normal.



echo -e " \e[35m Proffessional method using VARIABLES \e[0m "

R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[34m"
N="\e[0m"

echo -e "$R ERROR $N"
echo -e "$G SUCCESS $N"
echo -e "$Y WARNING $N"
echo -e "$B INFO $N"






