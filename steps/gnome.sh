#!/bin/bash

# Set Gnome Tweaks config
echo ">> Writing into Gnome Tweaks..."

gsettings set org.gnome.desktop.input-sources xkb-options "['altwin:left_meta_win']"
gsettings set org.gnome.mutter overlay-key 'Super_L'
gsettings set org.gnome.shell.extensions.user-theme name "Yaru-purple-dark"
gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark"

# Set Gnome Settings
echo ">> Writing into Gnome Settings..."

gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"
gsettings set org.gnome.desktop.interface enable-hot-corners "false"
gsettings set org.gnome.desktop.wm.keybindings switch-applications-backward "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-applications "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Alt>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward "['<Shift><Alt>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-group "['<Super>Tab']"
gsettings set org.gnome.settings-daemon.plugins.media-keys home "['<Super>f']" # File Manager
gsettings set org.gnome.settings-daemon.plugins.media-keys email "['<Super>m']" # Mail client
gsettings set org.gnome.settings-daemon.plugins.media-keys www "['<Super>b']" # Web Browser
gsettings set org.gnome.shell.keybindings toggle-message-tray "['<Super>v']" # Notification tray
gsettings set org.gnome.shell.keybindings show-screenshot-ui "[]"
gsettings set org.gnome.desktop.wm.keybindings close "['<Super>c']" # Close window
gsettings set org.gnome.desktop.wm.keybindings lower "['<Shift><Super>b']" # Hide window behind all
gsettings set org.gnome.desktop.wm.keybindings show-desktop "['<Super>d']" # Show/Hide desktop

# Custom keybindings
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/']"
# Tilix
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name "'Tilix'"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding "'<Super>t'"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command "'tilix'"
# Flameshot
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ name "'Flameshot'"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ binding "'Print'"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ command "'flameshot gui'"