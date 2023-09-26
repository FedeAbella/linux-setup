#!/bin/bash

NERD_FONTS=("Meslo" "FiraCode")

# Install nerd fonts
echo "Installing nerd-fonts..."

mkdir -pv "$HOME"/.local/share/fonts

for font in "${NERD_FONTS[@]}"; do
    curl -L -o "$HOME"/Downloads/"$font".tar.xz https://github.com/ryanoasis/nerd-fonts/releases/latest/download/"$font".tar.xz
    tar xvf "$HOME"/Downloads/"$font".tar.xz -C "$HOME"/.local/share/fonts/
    rm "$HOME"/Downloads/"$font".tar.xz
done

fc-cache