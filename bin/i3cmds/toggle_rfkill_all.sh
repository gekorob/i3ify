#!/usr/bin/env sh

if [ $(radio_devices_powered_on.sh) -eq 0 ]; then $(rfkill unblock all); else $(rfkill block all); fi
