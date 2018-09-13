export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWCOLORHINTS=true
export PROMPT_COMMAND='__git_ps1 "\[\033[01;32m\]\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]" "\n\$ "'
export PS2=" => "

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

pathmunge () {
   if ! echo $PATH | egrep -q "(^|:)$1($|:)" ; then
      if [ "$2" = "after" ] ; then
         PATH=$PATH:$1
      else
         PATH=$1:$PATH
      fi
      export PATH
   fi
}

pathmunge "~/.cargo/bin"
pathmunge "~/workspace/bin" after
