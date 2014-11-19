# File: functions.zsh
# Copyright: (c) 2014 Einar Uvsløkk
# Descripton: A collection of (un)useful (z)shell functions


# func: rtfm <term>
# desc: Open the man page for <term> or search for it online.
function rtfm() {
	man $@ || xdg-open "https://duckduckgo.com/?q=$@"
}


# func: extract <archive>
# desc: Universal archive extracter.
# TODO:2014-10-16:einar: add option for extracting to directory
function extract() {
	if [[ ! -f $1 ]]; then echo "extract: '$1' is not a file" ; return 1 ; fi

	local lower="${(L)1}"

	case "$lower" in
		(*.tar.gz|*.tgz)    tar -xvzf "$1" ;;
		(*.tar.bz2|*.tbz)   tar -xvjf "$1" ;;
		(*.tar.xz|*.txz)    tar -xvJf "$1" ;;
		(*.tar.zma|*.tlz)   tar --lzma -xvf "$1" ;;
		(*.tar)             tar -xvf "$1" ;;
		(*.gz)              gunzip "$1" ;;
		(*.bz2)             bunzip2 "$1" ;;
		(*.xz)              unxz "$1" ;;
		(*.lzma)            unlzma "$1" ;;
		(*.Z)               uncompress "$1" ;;
		(*.zip|*.war|*.jar) unzip "$1" ;;
		(*.rar)             unrar x -ad "$1" ;; # Maybe remove -ad for consistency ?
		(*.7z)              7za x "$1" ;;
		(*) echo "extract: unable to extract '$1'" 1>&2 ; return 1 ;;
	esac
}


# func: ppath
# desc: Pretty print the $PATH variable.
function ppath() {
	echo $PATH | sed 's|:|\n|g'
}


# func: macaddr
# desc: Display the MAC address for the network controller.
function macaddr() {
	ip addr show wlp2s0 | awk '/link\/ether/{print $2}'
}


# func: ipaddr
# desc: Display the IP address for the network controller.
function ipaddr() {
	ip addr show wlp2s0 | awk '/inet[^6]/{print $2}' | awk -F'/' '{print $1}'
}

# func: screenres
# desc: Display the current screen resolution
function screenres() {
	xrandr | grep '*' | cut -d" " -f4
}
alias scrnres='screenres'


# func: darkify
# desc: Make Spotify use dark theme window borders.
# See: http://unix.stackexchange.com/a/24071
function darkify() {
	local wm_class
	wm_class="Spotify - Linux Preview"
	xprop -f _GTK_THEME_VARIANT 8u -set _GTK_THEME_VARIANT "dark" -name $wm_class
}


# func: devel [section]
# desc: Navigates to the main development root.
function devel() {
	local path lower
	path="$HOME/Development"
	lower="${(L)1}"

	[ ! -d $path ] && return

	case "$lower" in
		('arch')        path="$path/arch" ;;
		('linux')       path="$path/linux" ;;
		('gh'|'github') path="$path/github" ;;
		('local')       path="$path/local" ;;
	esac

	cd $path
}
