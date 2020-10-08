#!/usr/bin/env sh

product="ThinkPad USB-C Dock Gen2"
usb-devices | grep "$product"

if [[ $? -eq 0 ]]; then 
  source $HOME/.screenlayout/home_docking.sh
#else
#  source $HOME/.screenlayout/midres_alone.sh
fi
