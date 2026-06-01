#!/bin/bash

PACKAGES="$@"    # we can pass the all arguments and using $@ we can install mutliple packages outside script passing arguments like sh pckg-installer-arg.sh nginx python3 git

dnf install $PACKAGES -y



