#!/bin/bash

# Create Variable
COMPANY="TCS"

# Make Variable readlonly
readonly COMPANY

# Print the current value
echo "Before change: $COMPANY"

# Try Change the Value
COMPANY=CGI

# Print Again

echo "After Change: $COMPANY"

