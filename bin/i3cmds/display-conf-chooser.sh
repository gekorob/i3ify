#!/usr/bin/env sh

product="ThinkPad USB-C Dock Gen2"
usb-devices | grep "$product"
connected_monitors=$(xrandr -q | grep -c '\sconnected\s')

case $connected_monitors in 
  3)
    echo "3 monitors"
    source $HOME/.screenlayout/home_docking.sh
    ;;
  2)
    source $HOME/.screenlayout/top_down.sh
    ;;
  1)
    source $HOME/.screenlayout/midres_alone.sh
    ;;
  *)
    echo "No configuration found for ${connected_monitors}"
    ;;
esac
