# File envvars.zsh
# Copyright: (c) 2014 Einar Uvsløkk
# Descripton: Zsh environment variables

# Python
rc_file="$HOME/.pyrc"
[ -f $rc_file ] && PYTHONSTARTUP=$rc_file
if [ -f /usr/bin/virtualenvwrapper.sh ]; then
	export WORKON_HOME="$HOME/.local/share/virtualenvs"
	[ ! -d $WORKON_HOME ] && mkdir -p $WORKON_HOME
	source /usr/bin/virtualenvwrapper.sh
fi

# TeX Live
info_path="/usr/local/texlive/2014/texmf-dist/doc/info"
man_path="/usr/local/texlive/2014/texmf-dist/doc/man"
bin_path="/usr/local/texlive/2014/bin/x86_64-linux"
[ -d $info_path ] && INFOPATH="$INFOPATH:$info_path"
[ -d $man_path ] && MANPATH="$MANPATH:$man_path"
[ -d $bin_path ] && PATH="$PATH:$bin_path"

# Go
GOPATH="$HOME/.go"
bin_path="$HOME/.go/bin"
[ -d $bin_path ] && PATH="$PATH:$bin_path"

# Node
bin_path="$HOME/.local/share/node_modules/bin"
[ -d $bin_path ] && PATH="$PATH:$bin_path"

# Ruby
bin_path="$HOME/.gem/ruby/2.1.0/bin"
[ -d $bin_path ] && PATH="$PATH:$bin_path"

# Local
man_path="$HOME/.local/share/man"
bin_path="$HOME/.local/bin"
[ -d $man_path ] && MANPATH="$MANPATH:$man_path"
[ -d $bin_path ] && PATH="$PATH:$bin_path"

# Exports
export EDITOR='vim'
export INFOPATH=$INFOPATH
export MANPATH=$MANPATH
export GOPATH=$GOPATH
export PYTHONSTARTUP=$PYTHONSTARTUP
export LOCALBINPATH=$LOCALBINPATH
export VAGRANT_DEFAULT_PROVIDER=kvm

export PATH=$PATH
