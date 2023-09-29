#!/usr/bin/env bash

# Define a log file path
LOG_FILE=".config/polybar/logfile.log"

# Redirect stdout and stderr to the log file
exec > "$LOG_FILE" 2>&1

source ~/.cache/wal/colors.sh

echo hello $color0 $color1 $color2 $color3 $color4 $color5 $color6 $color7

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use
polybar-msg cmd quit
# Otherwise, you can use the nuclear option:
# killall -q polybar

# Launch bar1 and bar2
echo "---"
sleep 0.1
polybar example &

echo "Bars launched..."
sleep 0.1
$HOME/.config/polybar/update_polybar_color.sh
