#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#input
export GTK_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export QT_IM_MODULE=fcitx
#default editor
export EDITOR=vim
#cvs
export CVSROOT=/home/maokei/cvsroot
#android
export PATH=${PATH}:~/android-sdks/
export PATH=${PATH}:~/android-sdks/tools
export PATH=${PATH}:~/android-sdks/platform-tools
export PATH=${PATH}:~/android-sdks/build-tools
#alias
alias ls='ls -lFS'
alias ll='ls -lhA'
alias hitta="find . -name "
alias wget='wget -c'
alias histg='history | grep'
alias top='htop'
alias myip='curl http://ipecho.net/plain; echo'

archey3
