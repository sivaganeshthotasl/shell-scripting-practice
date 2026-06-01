#!/bin/bash

# Arrays allow us to store multiple values in a single variable.
# Without arrays, we would need separate variables for each value.

PACKAGE=("nginx" "python3" "redis")

# Array indexing starts from 0.
echo "Installing ${PACKAGE[0]}"
echo "Installing ${PACKAGE[1]}"
echo "Installing ${PACKAGE[2]}"





