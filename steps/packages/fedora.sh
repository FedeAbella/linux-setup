#!/bin/bash

# Upgrade system
echo ">> Updating Fedora..."

sudo dnf upgrade --assumeyes

# Install programs
echo ">> Installing dnf packages..."

sudo dnf install --assumeyes \
autojump \
celluloid \
dconf-editor \
deluge \
fd-find \
flameshot \
flatpak \
gh \
gimp \
gnome-browser-connector \
gnome-tweaks \
inkscape \
menulibre \
python3-pip \
ranger \
ruby-devel \
sayonara \
steam \
tilix \
tldr \
unzip \
vim-X11 \
vim-common \
yt-dlp \
zsh \
zsh-syntax-highlighting

sudo dnf group install "C Development Tools and Libraries"