#!/bin/bash


# Debbugging shell scripting using set -x

set -x

PACKAGE="msql-server"

dnf install $PACKAGE -y
systemctl status $package
