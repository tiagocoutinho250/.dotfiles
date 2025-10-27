#!/bin/bash

WALL_DIR="$HOME/wallpapers"

#SELECTED=$(find ~/wallpapers -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" \) \
#    | while read -r img; do echo -en  "$img\0icon\x1f$img\n" ; done \
#    | rofi -dmenu -show-icons -theme "$HOME/.config/rofi/wallselect/style.rasi" )

SELECTED=$(find ~/wallpapers -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" \) \
    | while read -r img; do echo -en  "$img\0icon\x1f$img\n" ; done \
    | rofi -show -dmenu -theme "$HOME/.config/rofi/themes/wallpaper-select.rasi" )

# echo $SELECTED

if [ $(pgrep -c hyprpaper) -ne 0 ] && [ -n "$SELECTED" ]; then
    hyprctl hyprpaper unload all
    killall hyprpaper
fi

CONFIG_PATH="$HOME/.config/hypr/hyprpaper.conf"
echo "preload = $SELECTED" > "$CONFIG_PATH"
echo "wallpaper = HDMI-A-1, $SELECTED" >> "$CONFIG_PATH"
echo "wallpaper = DP-2, $SELECTED" >> "$CONFIG_PATH"
echo "splash = false" >> "$CONFIG_PATH"
echo "ipc = true" >> "$CONFIG_PATH"

ln -sf "$SELECTED" "$HOME/.current_wallpaper"

hyprpaper &
exit 1

