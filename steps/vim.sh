#!/bin/bash

os_id=$(grep ^ID= /etc/os-release | cut -d "=" -f2)

# Customize vim
echo ">> Customizing vim..."

mkdir -p "$HOME"/.vim/pack/themes/start
mkdir -p "$HOME"/.vim/pack/plugins/start

git clone https://github.com/dracula/vim.git "$HOME"/.vim/pack/themes/start/dracula
git clone https://github.com/jeffkreeftmeijer/vim-numbertoggle.git "$HOME"/.vim/pack/plugins/start/vim-numbertoggle
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

if [ "$os_id" = "fedora" ]; then
    vimx -c 'PlugInstall' -c 'qa!'
else 
    vim -c 'PlugInstall' -c 'qa!'
fi