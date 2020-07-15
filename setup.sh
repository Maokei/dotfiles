#!/usr/bin/env bash

echo "Setting (n)vim symlink"
mkdir -p ~/.config/nvim
ln -s $(pwd)/vimrc ~/.config/nvim/init.vim
