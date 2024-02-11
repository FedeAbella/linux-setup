#!/bin/bash

# Update system
echo ">> Updating Mint..."

sudo apt update
sudo apt -y upgrade

# Get additional apt packages
echo ">> Installing apt packages..."

sudo apt update
sudo apt -y install \
alacritty \
autojump \
celluloid \
dconf-editor \
deluge \
fd-find \
flameshot \
flatpak \
gimp \
inkscape \
lsd \
menulibre \
nala \
python3-pip \
ranger \
ruby-full \
sayonara \
steam \
tldr \
tmux \
unzip \
vim \
vim-gui-common \
yt-dlp \
zsh \
zsh-syntax-highlighting

# Link fdfind to fd
ln -s "$(which fdfind)" "$HOME"/.local/bin/fd

# Install github CLI
echo ">> Installing GitHub CLI..."

type -p curl >/dev/null || (sudo apt update && sudo apt install curl -y)
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y