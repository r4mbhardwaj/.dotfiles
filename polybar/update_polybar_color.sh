#!/bin/bash

wal -R
# Source Pywal's color scheme
source "${HOME}/.cache/wal/colors.sh"

# Set Pywal-generated colors to variables

# killall polybar -q

# Define the path to your Polybar configuration and config_base files
config_file="${HOME}/.config/polybar/config"
config_base_file="${HOME}/.config/polybar/config_base"

# Read the contents of config_base file into a variable
config_base=$(cat "$config_base_file")

if ${color0}
then
  echo $color0
else
# Update Polybar configuration with Pywal colors and config_base contents
cat <<EOL > "$config_file"
;==========================================================
;
;
;   ██████╗  ██████╗ ██╗  ██╗   ██╗██████╗  █████╗ ██████╗
;   ██╔══██╗██╔═══██╗██║  ╚██╗ ██╔╝██╔══██╗██╔══██╗██╔══██╗
;   ██████╔╝██║   ██║██║   ╚████╔╝ ██████╔╝███████║██████╔╝
;   ██╔═══╝ ██║   ██║██║    ╚██╔╝  ██╔══██╗██╔══██║██╔══██╗
;   ██║     ╚██████╔╝███████╗██║   ██████╔╝██║  ██║██║  ██║
;   ╚═╝      ╚═════╝ ╚══════╝╚═╝   ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝
;
;
;   To learn more about how to configure Polybar
;   go to https://github.com/polybar/polybar
;
;   The README contains a lot of information
;
;==========================================================

[colors]
background = ${color0}
background-alt = ${color1}
foreground = ${color7}
primary = ${color2}
secondary = ${color3}
alert = ${color8}
disabled = ${color8}

$config_base
EOL
fi

echo "[colors]
background = ${color0}
background-alt = ${color1}
foreground = ${color7}
primary = ${color2}
secondary = ${color3}
alert = ${color8}
disabled = ${color8}
"

# Restart Polybar to apply the changes
polybar-msg cmd restart
