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
echo -e "Hello Ganesh You are going to Complete shell scripting \e[32m "Successfully"  \e[0m"  # you will see the exact output now.



