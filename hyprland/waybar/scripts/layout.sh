#!/bin/bash

layout=$(hyprctl devices -j | jq -r '.keyboards[] | select(.main == true) | .active_keymap')

case "$layout" in
"English (US)")
  echo "ENG"
  ;;
"Serbian (Latin, QWERTY)")
  echo "SRB"
  ;;
"Serbian")
  echo "СРБ"
  ;;
*)
  echo "$layout"
  ;;
esac
