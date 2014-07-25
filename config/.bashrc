# ~/.bashrc
# vim:set ft=sh sw=2 sts=2:

# Store 10,000 history entries
export HISTSIZE=10000
# Don't store duplicates
export HISTCONTROL=erasedups
# Append to history file
shopt -s histappend

VISUAL=vim
EDITOR="$VISUAL"
LESS="FRX"  # leave man page visibile after 'q'
RI="--format ansi -T"
CLICOLOR=1
LSCOLORS=gxgxcxdxbxegedabagacad
LANG=en_US.UTF-8
LC_ALL=$LANG

export VISUAL EDITOR LESS RI CLICOLOR LSCOLORS LANG LC_ALL

if [ -n "$PS1" ]
then
  stty -ixon
  export PS1="\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$ "
fi

[ -f "$HOME/.bashrc.local" ] && . "$HOME/.bashrc.local"
[ -f "$HOME/.bashrc.aliases" ] && . "$HOME/.bashrc.aliases"
