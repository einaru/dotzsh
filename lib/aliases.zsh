# File: aliases.zsh
# Copyright: (c) 2014 Einar Uvsløkk
# Descripton: A collection of (un)useful (z)shell aliases

alias reload!='. ~/.zshrc'

# Navigation
alias ..='cd ..'
alias ...='cd ../..'

[ -d ~/Documents/master/emner ] && alias master='cd ~/Documents/master/emner/&&l'

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

# Fun
alias cputemp="awk '{printf \"%3.1f°C\n\", \$1/1000}' /sys/class/thermal/thermal_zone0/temp"

alias list-my-pkg='expac "%n %p" | grep "Einar Uvsløkk" | column -t'

