#!/bin/bash

# Install colorls using ruby
echo "Installing colorls..."

sudo gem install colorls

mkdir -p "$HOME"/.config/colorls
curl -L https://github.com/dracula/colorls/archive/master.zip -o "$HOME"/Downloads/dracula-colorls.zip
unzip -j "$HOME"/Downloads/dracula-colorls.zip colorls-master/dark_colors.yaml -d "$HOME"/.config/colorls
rm "$HOME"/Downloads/dracula-colorls.zip