#!/bin/bash

# String/Variable validation check -n / -z

# -n means check whether string or variable not empty

NAME="Siva GANESH SL"

if [ -n "$NAME" ]
then
     echo "Variable has value"
fi

# -z means check whether the string or variable empty


SURNAME=""

if [ -z "$SURNAME" ]
then
     echo "Variable is empty"
fi


