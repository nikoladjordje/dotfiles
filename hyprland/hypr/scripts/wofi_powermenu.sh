#!/bin/bash

chosen=$(echo -e " Power Off\n Reboot\n Logout\n Lock\n󰍁 Suspend" | wofi --dmenu --prompt "Power Menu" --width 200 --height 300 --lines 5 --hide-scroll --no-actions --insensitive --show dmenu --normal-window)

case "$chosen" in
" Power Off") systemctl poweroff ;;
" Reboot") systemctl reboot ;;
" Logout") hyprctl dispatch exit ;;
" Lock") hyprlock ;;
esac
