#!/bin/bash

## Gedit theme
echo ">> Setting Gedit theme..."

#mkdir -p "$HOME"/.local/share/gedit/styles
#curl -L https://raw.githubusercontent.com/dracula/gedit/master/dracula.xml -o "$HOME"/.local/share/gedit/styles/dracula.xml
#gsettings set org.gnome.gedit.preferences.editor scheme "dracula"

git clone https://github.com/catppuccin/gedit.git ~/Git/catppuccin-gedit
(cd ~/Git/catppuccin-gedit && bash install.sh)
gsettings set org.gnome.gedit.preferences.editor scheme "catppuccin_mocha"
