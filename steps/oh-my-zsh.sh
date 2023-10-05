#!/bin/bash

ZSH_CUSTOM=$HOME/.oh-my-zsh/custom

# Download Oh-My-Zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions "$ZSH_CUSTOM"/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$ZSH_CUSTOM"/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$ZSH_CUSTOM"/themes/powerlevel10k

# Change default shell
chsh -s "$(which zsh)"

# Install Oh-My-Zsh
# https://ohmyz.sh/#install
echo ">> Installing Oh-My-Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"