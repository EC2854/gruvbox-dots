#!/bin/bash

chosen=$(printf "  Power Off\n  Restart\n  Suspend\n  Lock\n󰍃  Log Out" | wofi --dmenu)

case "$chosen" in
    "  Power Off") systemctl poweroff;;
    "  Restart") systemctl reboot;;
    "  Lock") ~/.config/hypr/scripts/hyprlock.sh;;
    "󰍃 Log Out") hyprctl dispatch exit;;
    *) exit 1 ;;
esac
