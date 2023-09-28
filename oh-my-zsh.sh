#!/bin/bash

# Install Oh-My-Zsh
# https://ohmyz.sh/#install
echo ">> Installing Oh-My-Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Change default shell
chsh -s /bin/zsh
