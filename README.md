# dotfiles
vim config, bashrc etc
xresources
xprofile

Install plug

install:
mkdir -p $HOME/.config/nvim/
mv .vimrc $HOME/.config/nvim/init.vim

:PlugInstall
