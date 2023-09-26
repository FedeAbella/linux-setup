#!/bin/bash

# Set up icons
git clone https://github.com/vinceliuice/Tela-icon-theme "$HOME"/Downloads/Tela-icon-theme
chmod +x "$HOME"/Downloads/Tela-icon-theme/install.sh

"$HOME"/Downloads/Tela-icon-theme/install.sh -d "$HOME"/.icons -a

gsettings set org.gnome.desktop.interface icon-theme "Tela-purple-dark"
rm -rf "$HOME"/Downloads/Tela-icon-theme