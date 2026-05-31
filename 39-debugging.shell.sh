#!/bin/bash


# Debbugging shell scripting using set -x

set -x

PACKAGE="mysql-server"

dnf install $PACKAGE -y
systemctl start $PACKAGE
systemctl status $PACKAGE
