#!/bin/bash

FLATPAK_APPS=(
    com.mattjakeman.ExtensionManager # GNOME extensions manager
    org.telegram.desktop # Telegram
    io.github.mimbrero.WhatsAppDesktop # WhatsApp
    md.obsidian.Obsidian # Obsidian
    com.bitwarden.desktop # Bitwarden
    io.github.aandrew_me.ytdn # Youtube Downloader
    com.discordapp.Discord # Discord
)

# Add flathub repo

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Install flatpak apps
for app in "${FLATPAK_APPS[@]}"; do
    flatpak install flathub "$app"
done