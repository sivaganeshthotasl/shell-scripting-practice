#!/bin/bash

PACKAGES=("$1" "$2" "$3")  # you can use ("$@") this is good approach. instead of $1 $2 $3. $@ means all arguments



dnf install "${PACKAGES[@]}" -y


