# lib/alias.zsh
#
# Copyright (c) 2013 Einar Uvsløkk
# DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias ls="ls --color=auto"
alias l="ls"
alias l.="ls -d .*"
alias ll="ls -l"
alias la="ls -A"
alias ll.="ls -lA"
alias lla="ls -lA"
alias lld="ls -ld */"
alias llh="ls -lh"

alias md="mkdir -p"
alias rd="rmdir"

alias grep="grep --color=auto"

if [[ $USER == "root" ]]; then
	alias rm="rm -i"
	alias cp="cp -i"
	alias mv="mv -i"
fi

alias updatedb="sudo updatedb"

alias vi="vim"
alias gvimrs="gvim --remote-silent"
