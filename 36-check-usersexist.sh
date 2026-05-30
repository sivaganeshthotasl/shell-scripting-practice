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

 

USERS=("dev" "test" "prod")


for USER in "${USERS[@]}"
do
     id "$USER" &>/dev/null
     if [ $? -eq 0 ]
     then
          echo "User $USER already exists"
     else
          useradd "$USER"
          VALIDATE $? "Creating Users"
          echo "$USER created Successfull"

     fi
done




