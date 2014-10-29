# File envvars.zsh
# Copyright: (c) 2014 Einar Uvsløkk
# Descripton: Zsh environment variables

EDITOR='vim'

# Python
[ -f $HOME/.pyrc ] && PYTHONSTARTUP="$HOME/.pyrc"
if [ -f /usr/bin/virtualenvwrapper.sh ]; then
	export WORKON_HOME="$HOME/.local/share/virtualenvs"
	[ ! -d $WORKON_HOME ] && mkdir -p $WORKON_HOME
	source /usr/bin/virtualenvwrapper.sh
fi

# TeX Live
INFOPATH="$INFOPATH:/usr/local/texlive/2014/texmf-dist/doc/info"
MANPATH="$MANPATH:/usr/local/texlive/2014/texmf-dist/doc/man"
PATH="$PATH:/usr/local/texlive/2014/bin/x86_64-linux"

# Go
GOPATH="$HOME/.go"
PATH="$PATH:$HOME/.go/bin"

# Node
PATH="$PATH:$HOME/.local/share/node_modules/"

# Local
PATH="$PATH:$HOME/.local/bin"
MANPATH="$MANPATH:/.local/share/man"

# Exports
export EDITOR=$EDITOR
export INFOPATH=$INFOPATH
export MANPATH=$MANPATH
export GOPATH=$GOPATH
export PYTHONSTARTUP=$PYTHONSTARTUP
export PATH=$PATH
