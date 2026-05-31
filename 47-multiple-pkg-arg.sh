#!/bin/bash

PACKAGES=("$1" "$2" "$3")

dnf install "${PACKAGES[@]}" -y

