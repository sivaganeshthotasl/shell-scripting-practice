#!/bin/bash

# # Create Addition Function Addition 

ADD(){
    RESULT=$(($1+$2))
    echo "Addition is: "$RESULT""

}

# Call Function Name
ADD 10 20
# ADD $1 $2  # means Passing arguments to a function.

