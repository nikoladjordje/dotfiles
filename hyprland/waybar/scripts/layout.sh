#!/bin/bash

layout=$(hyprctl devices | grep "active keymap" | sed -n '3p' | cut -d ':' -f2- | xargs)

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
