#!/bin/bash

set -x
scp ./bin/targets/x86/64/openwrt-x86-64-generic-kernel.bin root@openwrt:/tmp
scp ./bin/targets/x86/64/openwrt-x86-64-generic-squashfs-rootfs.img.gz root@openwrt:/tmp
