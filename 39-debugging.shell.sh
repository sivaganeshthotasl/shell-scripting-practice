#!/bin/bash


# Debbugging shell scripting using set -x

set -x

PACKAGE="msql"

dnf install $PACKAGE -y
systemctl status $package
