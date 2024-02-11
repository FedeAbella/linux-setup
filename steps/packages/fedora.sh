#!/bin/bash

# Upgrade system
echo ">> Updating Fedora..."

sudo dnf upgrade --assumeyes

# Install programs
echo ">> Installing dnf packages..."

sudo dnf install --assumeyes \
alacritty \
autojump \
celluloid \
dconf-editor \
deluge \
fd-find \
flameshot \
flatpak \
gedit \
gh \
gimp \
gnome-browser-connector \
gnome-tweaks \
inkscape \
lsd \
menulibre \
python3-pip \
ranger \
repgrip \
ruby-devel \
sayonara \
steam \
tldr \
tmux \
unzip \
util-linux-user \
vim-X11 \
vim-common \
yt-dlp \
zsh \
zsh-syntax-highlighting

sudo dnf group install "C Development Tools and Libraries" --assumeyes