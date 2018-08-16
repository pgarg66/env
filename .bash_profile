export PS1="________________________________________________________________________________\n| \w @ \h (\u) \n| => "
export PS1=" \w @ \h (\u) \n => "
export PS2=" => "

source $HOME/.cargo/env

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced


alias cp='cp -iv'
alias mv='mv -iv'

alias ll='ls -FGlAhp'
alias less='less -FSRXc'

cd() { builtin cd "$@"; ll; }
alias cd..='cd ../'
alias ..='cd ../'
alias ...='cd ../../'
alias ~="cd ~"

alias c='clear'
alias fix_stty='stty sane'

spotlight () { mdfind "kMDItemDisplayName == '$@'wc"; }


if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
