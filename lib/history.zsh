# File: history.zsh
# Copyright: (c) 2014 Einar Uvsløkk
# Descripton: (z)shell history setup

HISTFILE=$HOME/.histfile
HISTSIZE=10000
SAVEHIST=10000

setopt HIST_IGNORE_DUPS
setopt SHARE_HISTORY
setopt HIST_VERIFY
setopt INC_APPEND_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_SPACE
