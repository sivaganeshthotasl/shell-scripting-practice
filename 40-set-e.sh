#!/bin/bash


# Using set -e if any commands are typo wrong for example
set -e
dnf install fakepackage -y # this is wrong package name so this script should stop here and say error.
dnf install python3