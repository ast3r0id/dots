#!/usr/bin/env bash

# rofi-power
# Use rofi to call systemctl for shutdown, reboot, etc

# 2016 Oliver Kraitschy - http://okraits.de

OPTIONS="Lock\nExit i3\nReboot\nShutdown"
LAUNCHER="rofi -width 30 -dmenu -i -p rofi-power:"
USE_LOCKER="true"
LOCKER="betterlockscreen"
EXIT="i3-msg exit"

# Show exit wm option if exit command is provided as an argument
if [ ${#1} -gt 0 ]; then
  OPTIONS="Exit window manager\n$OPTIONS"
fi

option=`echo -e $OPTIONS | $LAUNCHER | awk '{print $1}' | tr -d '\r\n'`
if [ ${#option} -gt 0 ]
then
    case $option in
      Lock)
        betterlockscreen -l dim 
        ;;
      Exit)
        exec i3-msg exit
        ;;
      Reboot)
        systemctl reboot
        ;;
      Shutdown)
        systemctl poweroff
        ;;
      *)
        ;;
    esac
fi
