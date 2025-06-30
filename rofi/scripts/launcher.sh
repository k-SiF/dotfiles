#!/bin/bash

# Show a list of all apps with rofi
app=$(rofi -show drun -modi drun -p "Launch App" -no-custom | awk '{print $1}')

# Exit if nothing was selected
[ -z "$app" ] && exit

# Define custom behavior
case "$app" in
    discord)
        QT_SCALE_FACTOR=1 DISCORD_DISABLE_GPU_SANDBOX=1 nohup discord --enable-features=UseOzonePlatform --ozone-platform=wayland & disown ;;
    *)
        # Default behavior: fallback to the original launcher
        gtk-launch "$app" & ;;
esac

