#!/bin/bash

# Package Installation Variables

PACKAGE="nginx"

# Install Using Variable

dnf install "$PACKAGE" -y

# Print Installing nginx.......

echo "Installing "$PACKAGE"......."

