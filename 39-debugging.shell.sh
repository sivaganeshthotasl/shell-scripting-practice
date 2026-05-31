#!/bin/bash


# Debbugging shell scripting using set -x

set -x

PACKAGE="nginx"

dnf install $PACKAGE -y
systemctl status $PACKAGE
