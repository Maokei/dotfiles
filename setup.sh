#!/usr/bin/env bash

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        echo "Linux"
elif [[ "$OSTYPE" == "darwin"* ]]; then
        echo "Mac OSX"
elif [[ "$OSTYPE" == "cygwin" ]]; then
        echo "POSIX compatibility layer and Linux environment emulation for Windows"
elif [[ "$OSTYPE" == "msys" ]]; then
        echo "Lightweight shell and GNU utilities compiled for Windows (part of MinGW)"
elif [[ "$OSTYPE" == "win32" ]]; then
        echo "Windows O_O"
elif [[ "$OSTYPE" == "freebsd"* ]]; then
        echo "Ahh more unix nice"
else
        echo "Unknown OS"
fi

pip install --upgrade pynvim
yarn global add neovim

echo "Setting (n)vim symlink"
mkdir -p ~/.config/nvim
ln -s $(pwd)/vimrc ~/.config/nvim/init.vim
