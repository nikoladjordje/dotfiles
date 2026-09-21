#!/bin/bash

status=$(playerctl status 2>/dev/null)

escape_markup() {
  sed \
    -e 's/&/\&amp;/g' \
    -e 's/</\&lt;/g' \
    -e 's/>/\&gt;/g'
}

if [ "$status" = "Playing" ]; then
  text=$(playerctl metadata --format '{{artist}} - {{title}}' 2>/dev/null | escape_markup)
  echo "󰎆 $text"
elif [ "$status" = "Paused" ]; then
  text=$(playerctl metadata --format '{{artist}} - {{title}}' 2>/dev/null | escape_markup)
  echo "󰏤 $text"
else
  echo ""
fi
