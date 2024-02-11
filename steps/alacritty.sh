#!/bin/bash

mkdir "$HOME"/.config/alacritty
git clone https://github.com/catppuccin/alacritty.git "$HOME"/.config/alacritty/catppuccin
(cd "$HOME"/.config/alacritty/catppuccin && git fetch --all --tags && git checkout tags/yaml -b yaml)