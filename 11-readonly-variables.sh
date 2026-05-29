#!/bin/bash

# Create Variable
COMPANY="CGI"

# Make Variable readlonly
readonly COMPANY

# Print the current value
echo "Before change: $COMPANY"

# Try Change the Value
COMPANY="TCS"

# Print Again

echo "After Change: $COMPANY"


