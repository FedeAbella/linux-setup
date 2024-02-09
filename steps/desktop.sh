#!/bin/bash

shopt -s nocasematch
this_dir=$(dirname "$(realpath "${BASH_SOURCE[0]}")")

gnome_regex=".*gnome.*"
gnome_steps=(
    "gnome-extensions" # Install GNOME extensions
    "gnome-settings" # Configure GNOME
    "gedit" # Configure gedit
    "gnome-terminal" # Install catppuccin color for gnome-terminal
)

if [[ "$XDG_CURRENT_DESKTOP" =~ $gnome_regex ]]; then
    for step in "${gnome_steps[@]}"; do
        /bin/bash "$this_dir"/desktops/"$step".sh
    done
fi