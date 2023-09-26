#!/bin/bash
# Bootstrap a new distro installation with preferred configs

# Define vars
THIS_DIR=$(dirname "$(realpath "${BASH_SOURCE[0]}")")
OS_ID=$(grep ^ID= /etc/os-release | cut -d "=" -f2)

export THIS_DIR
export OS_ID

# Upgrade system and install packages, depending on distro
if [ "$OS_ID" = "fedora" ]; then
	/bin/bash "$THIS_DIR"/fedora/packages.sh
fi

# Bootstrap steps
STEPS=(
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
)

for step in "${STEPS[@]}"; do
    /bin/bash "$THIS_DIR"/"$step".sh
done
