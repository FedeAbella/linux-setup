#!/bin/bash

## Configure Ranger
echo ">> Configuring ranger..."

ranger --copy-config=rc
mkdir -p "$HOME"/.config/ranger/colorschemes

git clone https://github.com/dracula/ranger.git "$HOME"/Downloads/dracula-ranger
cp "$HOME"/Downloads/dracula-ranger/dracula.py "$HOME"/.config/ranger/colorschemes/dracula.py
rm -rf "$HOME"/Downloads/dracula-ranger
