#!/bin/bash

set -x
scp ./bin/targets/x86/64/openwrt-x86-64-generic-squashfs-combined.img.gz root@openwrt:/tmp
