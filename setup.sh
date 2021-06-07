#!/usr/bin/env bash

pip3 install --upgrade pynvim

echo "Setting (n)vim symlink"
mkdir -p ~/.config/nvim
ln -s $(pwd)/vimrc ~/.config/nvim/init.vim
