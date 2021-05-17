#!/bin/bash

set -x

HOST=192.168.1.1
PORT=1815

# ssh -p $PORT root@$HOST rm -rf /packages
# scp -r -P $PORT ./bin/packages/x86_64 root@$HOST:/packages
# scp -r -P $PORT ./bin/targets/x86/64/packages root@$HOST:/packages/builtin

RSYNC_OPTS="--recursive --links --times --inplace --sparse --whole-file --delete --delete-after --delete-excluded --ignore-errors --partial --human-readable --progress --stats --timeout=10"
rsync -e "ssh -p$PORT" $RSYNC_OPTS ./bin/packages/x86_64/ $HOST:/packages
rsync -e "ssh -p$PORT" $RSYNC_OPTS ./bin/targets/x86/64/packages/ $HOST:/packages/builtin
