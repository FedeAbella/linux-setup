#!/bin/bash

# Install nodejs and npm using nvm
echo "Installing nodejs..."

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
# shellcheck source=/dev/null
source "$HOME"/.bashrc

nvm install node
nvm install-latest-npm