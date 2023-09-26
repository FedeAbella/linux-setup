#!/bin/bash

# Update system
echo ">> Updating Ubuntu..."

sudo apt update
sudo apt -y upgrade

# Get additional apt packages
echo ">> Installing additional apt packages..."

sudo apt update
sudo apt -y install \
autojump \
celluloid \
dconf-editor \
deluge \
fd-find \
gimp \
gnome-shell-extensions \
gnome-tweaks \
inkscape \
menulibre \
nala \
ranger \
ruby-full \
sayonara \
steam \
tilix \
tldr \
unzip \
vim \
vim-gui-common \
yt-dlp \
zsh \
zsh-syntax-highlighting


# Clean up out-of-the-box snaps & software
echo ">> Removing pre-installed software..."

sudo snap remove firefox
sudo apt -y remove rhythmbox transmission

# Link fdfind to fd
ln -s "$(which fdfind)" "$HOME"/.local/bin/fd