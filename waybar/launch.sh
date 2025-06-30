#!/bin/bash

killall waybar

if [[ $USER = "athena" ]]; then
  waybar -c ~/.config/waybar/config.jsonc -s ~/.config/waybar/style.css &
else
  waybar &
fi

