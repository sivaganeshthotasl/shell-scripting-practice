#!/bin/bash
# Array Variable using arrays we can store multimple values. with out array we should create multiple variable names.
PACKAGE=("nginx" "python3" "redis") # PACKAGE is a variable name and values are stored in variable. 

# To access array variables we use "${PACKAGE[0]}" means that nginx is installing. here values counts from 0.
echo "Installing "${PACKAGE[0]}""
echo "Installing "${PACKAGE[1]}""
echo "Installing "${PACKAGE[2]}""

# OutPut shows
# Installing nginx
# Installing python3
# Installing redis





