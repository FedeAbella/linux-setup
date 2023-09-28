#!/bin/bash
# Bootstrap a new distro installation with preferred configs

# Define vars
THIS_DIR=$(dirname "$(realpath "${BASH_SOURCE[0]}")")

# Bootstrap steps
STEPS=(
    "packages" # Update system and install packages
    "dirs" # Create directories
    "nodejs" # Install nvm, nodejs, npm
    "nerd-fonts" # Install nerd fonts
    "colorls" # Install colorls
    "gnome" # Configure GNOME
    "icons" # Install icons
    "vim" # Customize vim
    "autostart" # Set autostart files
    "vscode" # Install vscode
    "gedit" # Configure gedit
    "ranger" # Configure ranger
    "flatpak" # Configure flatpak and install flatpak apps
    "oh-my-zsh" # Install Oh-My-Zsh and change shell to zsh
)

# Run step subscripts
for step in "${STEPS[@]}"; do
    /bin/bash "$THIS_DIR"/steps/"$step".sh
done
