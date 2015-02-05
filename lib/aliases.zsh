# File: aliases.zsh
# Copyright: (c) 2014 Einar Uvsløkk
# Descripton: A collection of (un)useful (z)shell aliases

alias reload!='. ~/.zshrc'

# Navigation
alias ..='cd ..'
alias ...='cd ../..'

[ -d ~/Documents/Master ] && alias master='cd ~/Documents/Master/&&l'
[ -d ~/Documents/Master/Emner ] && alias emner='cd ~/Documents/Master/Emner/&&l'
[ -d ~/Documents/Master/Thesis ] && alias thesis='cd ~/Documents/Master/Thesis/&&l'

# Directory listing
alias ls='ls --color=auto'
alias l='ls'
alias ll='ls -l'
alias lla='ls -lA'
alias lld='ls -ld */'
alias llh='ls -lh'
alias l.='ls -d .*'
alias ll.='ls -ld .*'
alias lld.='ls -ld .*/'
alias lls='ls -lA | grep "\->" --color=never'

# Misc. applications
alias grep='grep --color=auto'

alias vi='vim'
alias gvimrs='gvim --remote-silent'
alias e="$(if [[ -n $DISPLAY ]]; then echo 'gvim'; else echo 'vim'; fi)";

alias xclip='xclip -sel clip'

alias popcorn-time='/mnt/data/opt/popcorn-time/Popcorn-Time'

# Fun
alias cputemp="awk '{printf \"%3.1f°C\n\", \$1/1000}' /sys/class/thermal/thermal_zone0/temp"

alias list-my-pkg='expac "%n %p" | grep "Einar Uvsløkk" | column -t'
