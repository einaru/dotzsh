# .zshrc
#
# Copyright (c) 2013 Einar Uvsløkk
# DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE

setopt notify
setopt COMPLETE_IN_WORD
setopt NO_BEEP
setopt PROMPT_PERCENT
setopt PROMPT_SUBST
setopt RM_STAR_WAIT

unsetopt beep

bindkey -v

# The following lines were added by compinstall
zstyle :compinstall filename '/home/einar/.zshrc'

autoload -Uz compinit && compinit
autoload -U colors && colors
autoload -U promptinit && promptinit

export ZSH_ROOT=$HOME/.zsh

. $ZSH_ROOT/init.zsh
. $ZSH_ROOT/prompt.zsh