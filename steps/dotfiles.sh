#!/bin/bash

# Clone dotfiles repository and create dotfile links
git clone https://github.com/FedeAbella/.dotfiles.git "$HOME"/.dotfiles
/bin/bash "$HOME"/.dotfiles/bootstrap.sh