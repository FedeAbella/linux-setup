#!/bin/bash

# Install the GNOME extensions manager flatpak app
flatpak install flathub com.mattjakeman.ExtensionManager --assumeyes

extensions=(
    "blur-my-shell@aunetx" # Blur my shell
    "CoverflowAltTab@palatis.blogspot.com" # Cover Flow Alt Tab
    "dash-to-panel@jderose9.github.com" # Dash to Panel
    "openweather-extension@penguin-teal.github.io" # OpenWeather refined
    "suppress-startup-animation@icedman.github.com" # No overview on startup
    "unblank@sun.wxg@gmail.com" # Unblank lock screen
    "unredirect@vaina.lt" # Disable unredirect fullscreen
    "user-theme@gnome-shell-extensions.gcampax.github.com" # User themes
    "Vitals@CodeCoding.com" # Vitals
    # "appindicatorsupport@rgcjonas.gmail.com" # App Indicator support
    # "quarterwindows@troyready.com" # Quarter windows
    # "task-widget@juozasmiskinis.gitlab.io" # Tasks in notification panel
    # "vertical-workspaces@G-dH.github.com" # Vertical workspaces
)

# Install GNOME extensions CLI tool
echo ">> Installing gnome-extensions-cli..."
pip3 install --upgrade gnome-extensions-cli

# Install extensions
echo ">> Installing gnome extensions..."
for ext in "${extensions[@]}"; do
    gext install "$ext"
    gext enable "$ext"
done

# Map keybindings for vertical workspaces
# https://github.com/RensAlthuis/vertical-overview/issues/7#issuecomment-816054137
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "['<Super>Page_Up']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "['<Super>Page_Down']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['<Super><Alt>Left']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['<Super><Alt>Right']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-up "['<Super><Shift>Page_Up']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-down "['<Super><Shift>Page_Down']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-left "['<Super><Shift><Alt>Left']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-right "['<Super><Shift><Alt>Right']"

# To undo vertical keybindings:
# dconf reset org.gnome.desktop.wm.keybindings switch-to-workspace-up
# dconf reset org.gnome.desktop.wm.keybindings switch-to-workspace-down
# dconf reset org.gnome.desktop.wm.keybindings switch-to-workspace-left
# dconf reset org.gnome.desktop.wm.keybindings switch-to-workspace-right
# dconf reset org.gnome.desktop.wm.keybindings move-to-workspace-up
# dconf reset org.gnome.desktop.wm.keybindings move-to-workspace-down
# dconf reset org.gnome.desktop.wm.keybindings move-to-workspace-left
# dconf reset org.gnome.desktop.wm.keybindings move-to-workspace-right