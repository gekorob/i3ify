#!/usr/bin/env sh

docking_uuid='0048e9b8-c99c-0801-ffff-ffffffffffff'
device_list_filtered=$(boltctl list | grep $docking_uuid)

if [[ $device_list_filtered == *"$docking_uuid"* ]]; then 
  source $HOME/.screenlayout/home_docking.sh
fi
