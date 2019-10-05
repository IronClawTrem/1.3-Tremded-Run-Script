#!/bin/bash

source config.sh

# Run an infinate loop
while true; do
    "$OVERPATH/tremded" \
    +set vm_game "0" +set vm_cgame "2" +set vm_ui "2" \
    +set fs_basegame "$BASEGAME" \
    +set fs_game "$GAME" \
    +set sv_dlURL "$DOWNLOADURL" \
    +set fs_overpath "$OVERPATH" \
    +set fs_basepath "$BASEPATH" \
    +set fs_homepath "$HOMEPATH" \
    +set dedicated 2 \
    +set fs_pk3PrefixPairs "&vms-1.1.0|vms-gpp1&" \
    +set net_alternateProtocols 3 \
    +set net_port 50002 +set net_alt1port 50001 +set net_alt2port 50000 \
    +set sv_allowDownload 1 \
    +exec server.cfg \
    +map atcs

    if read -r -s -n 1 -t 6 -p "Press any key in the next 5 seconds to abort restarting the game server..."
    then
      echo $'\a\naborted'
      break
    else
      echo $'\nrestarting'
    fi
done
