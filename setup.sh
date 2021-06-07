#!/usr/bin/env bash

pip3 install --upgrade pynvim
yarn global add neovim

echo "Setting (n)vim symlink"
mkdir -p ~/.config/nvim
ln -s $(pwd)/vimrc ~/.config/nvim/init.vim
