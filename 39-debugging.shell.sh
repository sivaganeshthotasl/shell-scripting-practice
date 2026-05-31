#!/bin/bash


# Debbugging shell scripting using set -x

set -x # it shows executed commands, Variable exapansion, Loop execution, 

PACKAGE="mysql-server"
PACKAGE_START="mysqld"

dnf install $PACKAGE -y
systemctl start $PACKAGE_START
systemctl status $PACKAGE_START
