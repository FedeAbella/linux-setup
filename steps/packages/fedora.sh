#!/bin/bash

# Upgrade system
echo ">> Updating Fedora..."

sudo dnf upgrade

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
gimp \
gnome-browser-connector \
gnome-tweaks \
inkscape \
menulibre \
ranger \
ruby-devel \
sayonara \
steam \
tilix \
tldr \
unzip \
vim-X11 \
vim-common
yt-dlp \
zsh \
zsh-syntax-highlighting

sudo dnf group install "C Development Tools and Libraries"