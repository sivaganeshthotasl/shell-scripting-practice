#!/bin/bash


# Check if users are exit



VALIDATE(){
    if [ $1 -eq 0 ]
    then
         echo "$2 is...Success"
    else
         echo "$2 is....Failed"
         exit
    fi

}

 

USERS=("siva" "thota" "ganesh")

for USER in "${USERS [@]}" 
do
     id "$USER"
     if [ $? -eq 0 ]
     then
          echo "users are already exit"
     else
         useradd $USER
         VALIDATE $? "Creating User"
         echo "$USER are created succesfully"
    fi
done







