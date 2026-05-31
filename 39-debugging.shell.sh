#!/bin/bash


# Debbugging shell scripting using set -x

set -x

PACKAGE="mysql-server"
PACKAGE_START="mysqld"

dnf install $PACKAGE -y
systemctl start $PACKAGE_START
systemctl status $PACKAGE_START
