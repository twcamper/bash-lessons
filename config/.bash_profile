# rearrange path for homebrew installs (/usr/local/bin goes before /usr/bin)
export PATH=/usr/local/bin:$(echo $PATH | sed -e 's/\/usr\/local\/bin://')

source "$HOME/.bashrc"

[ -s "$HOME/.rvm/scripts/rvm" ] && source "$HOME/.rvm/scripts/rvm"
[ -r $HOME/.rvm/scripts/completion ] && source $HOME/.rvm/scripts/completion

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

if [ -f $(which brew) ] && [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
