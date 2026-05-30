#!/bin/bash


# Check if users are exit

USERS=("dev" "test" "prod")

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
         echo "$USERS are created Successfully"
    fi

done




