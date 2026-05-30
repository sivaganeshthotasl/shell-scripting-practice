#!/bin/bash


# Check if users are exit

USERS=("dev" "test" "prod")

# Loop Starts here

for user in "${USERS[@]}"
do
     id "$USERS"
     if [ $USERS -ne 0 ]
     then
         echo "ERROR: User is doesn't exist"
         useradd $USERS
     else
         echo "$USERS are already exist"
    fi

done


echo "$USERS are created Successfully"

