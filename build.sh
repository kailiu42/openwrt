#!/bin/bash

set -x

mkdir -p files/etc
date -Iseconds > files/etc/build.time

MAKEOPTS="$*"

# Some packages needs to checkout from github, may fail randomly so try
# parallel build for 3 times first before the single verbose build
make $MAKEOPTS ||
	make $MAKEOPTS ||
	make $MAKEOPTS ||
	make V=s -j1
