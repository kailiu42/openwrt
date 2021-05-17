#!/bin/bash

set -x

#PKGPREFIX=/mnt/backup
PKGPREFIX=/

ssh root@openwrt rm -rf /packages
scp -r ./bin/packages/x86_64 root@openwrt:$PKGPREFIX/packages
scp -r ./bin/targets/x86/64/packages root@openwrt:$PKGPREFIX/packages/builtin
