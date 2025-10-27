#! /bin/bash

# Get id of an active window
ACTIVE_PROG=$(hyprctl activewindow -j | jq -c -r '.pid' | xargs -I {} ps -p {} -o comm=)

CONFIG_PATH="$HOME/.last_closed"
echo "#! /bin/bash" > "$CONFIG_PATH"
echo "$ACTIVE_PROG" >> "$CONFIG_PATH"

# Close active window
hyprctl dispatch killactive

