# File: zshrc
# Copyright: (c) 2014 Einar Uvsløkk
# Descripton: Main zshell configuration file

# Lines configured by zsh-newuser-install
setopt autocd
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename $HOME/.zshrc

autoload -Uz compinit
compinit
# End of lines added by compinstall

local ZSH_ROOT=$HOME/.zsh
fpath=($ZSH_ROOT/functions $fpath)
for libfile ($ZSH_ROOT/lib/*.zsh) . $libfile

#function virtual_env_prompt() {
#	REPLY=${VIRTUAL_ENV+(${VIRTUAL_ENV:t}) }
#}
#grml_theme_add_token virtual-env -f virtual_env_prompt
#zstyle ':prompt:grml:left:setup' items rc virtual-env change-root user at host path vsc percent
autoload -U promptinit && promptinit
prompt pure
