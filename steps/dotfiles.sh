#!/bin/bash

# Clone dotfiles repository and create dotfile links
git clone https://github.com/FedeAbella/.dotfiles.git "$HOME"/.dotfiles
/bin/bash "$HOME"/.dotfiles/bootstrap.sh

# Set up cron job to update dotfiles
echo "0 * * * * /bin/bash $HOME/.dotfiles/update.sh >/dev/null 2>&1" | sudo tee /etc/cron.d/dotfiles-update