#!/bin/bash


# Check if users are exit

USERS=("dev" "test" "prod")


VALIDATE(){
    if [ $1 -eq 0 ]
    then
         echo "$2 is...Success"
    else
         echo "$2 is....Failed"
         exit
    fi

}

# Loop Starts here

for user in "${USERS[@]}"
do
     id "$USERS"
     if [ $? -eq 0 ]
     then
         echo "Users are already exist"
         
     else
         echo "User are doesn't exist"
         useradd $USERS
         VALIDATE $? "$USERS are Creating"
         echo "$USERS are created Successfully"
    fi

done




