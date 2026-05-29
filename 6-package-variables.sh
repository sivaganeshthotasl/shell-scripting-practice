#!/bin/bash

# Package Installation Variables

# PACKAGE="nginx"

# # Install Using Variable

# dnf install "$PACKAGE" -y

# # Print Installing nginx.......

# echo "Installing "$PACKAGE".......SUCCESS"


MYSQL_PACKAGE="mysql"
REDIS_PACKAGE="redis"
MONGODB_PACKAGE="mongodb-org"

# Install Using Variable
dnf install "$MYSQL_PACKAGE" -y
echo "Installing "$MYSQL_PACKAGE".......SUCCESS"
dnf install "$REDIS_PACKAGE" -y
echo "Installing "$REDIS_PACKAGE"........SUCCESS"
dnf install "$MONGODB_PACKAGE" -y
echo "Installing "$MONGODB_PACKAGE".......SUCCESS"

