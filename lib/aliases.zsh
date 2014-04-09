# lib/alias.zsh
#
# Copyright (c) 2013 Einar Uvsløkk
# DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE

alias reload!='. ~/.zshrc'

# ================ Basics ============================

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias ls='ls --color=auto'
alias l='ls'
alias l.='ls -d .*'
alias ll='ls -l'
alias la='ls -A'
alias ll.='ls -lA'
alias lla='ls -lA'
alias lld='ls -ld */'
alias llh='ls -lh'

alias md='mkdir -p'
alias rd='rmdir'

alias grep='grep --color=auto'

alias vi='vim'
alias gvimrs='gvim --remote-silent'
alias e='gvim' #'$EDITOR'

# ================ Administration ====================

if [[ $USER == 'root' ]]; then
	alias rm='rm -i'
	alias cp='cp -i'
	alias mv='mv -i'
fi

alias updatedb='sudo updatedb'

# Pacman
alias pac-upgrade='sudo pacman -Syu'
alias pac-install='sudo pacman -S'
alias pac-localinstall='sudo pacman -U'
alias pac-remove='sudo pacman -R'
alias pac-remove-deps='sudo pacman -Rns'

alias pac-info='pacman -Si'
alias pac-search='pacman -Ss'
alias pac-local-info='pacman -Qi'
alias pac-local-search='pacman -Qs'

alias pac-update='sudo pacman -Sy'
alias pac-install-as-dependency='sudo pacman -S --asdeps'
alias pac-refresh-mirror='sudo pacman -Syy'

# ================ Custom locations ==================

MASTER_DIR="$HOME/Documents/Master"
alias emner="cd /mnt/$HOST/documents/ntnu/emne-koder;l"
alias master="cd $MASTER_DIR/Emner;l"

alias weka="java -jar $MASTER_DIR/Emner/tdt4300/exercises/software/weka-3-6-10/weka.jar"

# ================ Miscellaneous =====================

alias rm-flashcache='rm -r ~/.{adobe,macromedia}/Flash_Player'
alias rm-trash='rm -r ~/.local/share/Trash/files/'

alias xclip='xclip -sel clip'

alias xopen='xdg-open'

alias grep-todo='grep -niR TODO *'
alias grep-fixme='grep -niR FIXME *'

# Install Vundle bundles
alias ivb='vim +BundleInstall +qall'

# Print the CPU temperature
alias cputemp="awk '{printf \"%3.1f°C\n\", \$1/1000}' /sys/class/thermal/thermal_zone0/temp"
