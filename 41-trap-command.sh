#!/bin/bash



trap 'echo "ERROR Occured at line $LINENO"' ERR

dnf install fakepackage -y # this is wrong package name so this script should stop here and say error.
ls /acde

