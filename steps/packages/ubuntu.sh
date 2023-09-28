#!/bin/bash

# Update system
echo ">> Updating Ubuntu..."

sudo apt update
sudo apt -y upgrade

# Get additional apt packages
echo ">> Installing apt packages..."

sudo apt update
sudo apt -y install \
autojump \
celluloid \
dconf-editor \
deluge \
fd-find \
flameshot \
flatpak \
gimp \
gnome-shell-extensions \
gnome-software-plugin-flatpak \
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

# Link fdfind to fd
ln -s "$(which fdfind)" "$HOME"/.local/bin/fd

# Installing Firefox as a .deb
# Follows: https://www.omgubuntu.co.uk/2022/04/how-to-install-firefox-deb-apt-ubuntu-22-04
echo ">> Installing Firefox..."
sudo snap remove firefox
sudo add-apt-repository ppa:mozillateam/ppa

echo '
Package: *
Pin: release o=LP-PPA-mozillateam
Pin-Priority: 1001
' | sudo tee /etc/apt/preferences.d/mozilla-firefox

# shellcheck disable=SC2016
echo 'Unattended-Upgrade::Allowed-Origins:: "LP-PPA-mozillateam:${distro_codename}";' | sudo tee /etc/apt/apt.conf.d/51unattended-upgrades-firefox

sudo apt install firefox