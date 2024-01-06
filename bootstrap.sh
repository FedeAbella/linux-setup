#!/bin/bash
# Bootstrap a new distro installation with preferred configs

# Define vars
this_dir=$(dirname "$(realpath "${BASH_SOURCE[0]}")")

# Bootstrap bootstrap_steps
bootstrap_steps=(
    "packages" # Update system and install packages
    "codecs" # Install multimedia codecs
    "dirs" # Create directories
    "nodejs" # Install nvm, nodejs, npm
    "nerd-fonts" # Install nerd fonts
    "colorls" # Install colorls
    "icons" # Install icons
    "vim" # Customize vim
    "autostart" # Set autostart files
    "vscode" # Install vscode
    "flatpak" # Configure flatpak and install flatpak apps
    "dotfiles" # Clone personal dotfiles repo and make links
    "desktop" # Run desktop environment specific configs
    "oh-my-zsh" # Install Oh-My-Zsh and change shell to zsh
)

# Run step subscripts
for step in "${bootstrap_steps[@]}"; do
    /bin/bash "$this_dir"/steps/"$step".sh
done
