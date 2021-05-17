#!/bin/bash

set -x

mkdir -p files/etc
date -Iseconds | sudo tee files/etc/build.time

MAKEOPTS="-j80 $*"

# Some packages needs to checkout from github, may fail randomly so try
# parallel build for 3 times first before the single verbose build
make $MAKEOPTS
