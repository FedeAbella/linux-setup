#!/bin/bash

## Gedit theme
echo ">> Setting Gedit theme..."

mkdir -p "$HOME"/.local/share/gedit/styles

curl -L https://raw.githubusercontent.com/dracula/gedit/master/dracula.xml -o "$HOME"/.local/share/gedit/styles/dracula.xml
gsettings set org.gnome.gedit.preferences.editor scheme "dracula"
