#!/usr/bin/env bash

choice=$(printf '%s\n' \
  "Lock" \
  "Logout" \
  "Suspend" \
  "Reboot" \
  "Shutdown" |
  walker --dmenu)

case "$choice" in
"Lock")
  hyprlock
  ;;
"Logout")
  hyprctl dispatch exit
  ;;
"Suspend")
  systemctl suspend
  ;;
"Reboot")
  systemctl reboot
  ;;
"Shutdown")
  systemctl poweroff
  ;;
esac
