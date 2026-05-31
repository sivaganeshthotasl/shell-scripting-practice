#!/bin/bash



trap 'echo "ERROR occured at line $LINENO"' ERR  # this should be written starting from the script i mena before commands ti should be if you give this last it will not work.

dnf install fakepackage -y # this is wrong package name so this script should stop here and say error.
ls /acde

