# lib/git.zsh
#
# Copyright (c) 2013 Einar Uvsløkk
# DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE

GIT_PS_PREFIX="\
[%{$fg[red]%}git%{$reset_color%}%{$fg[green]%}±%{$reset_color%}]\
[%{$fg[yellow]%}"
GIT_PS_SUFFIX=""
GIT_PS_CLEAN="%{$reset_color%}]"
GIT_PS_DIRTY="%{$reset_color%}][%{$fg[red]%}*%{$reset_color%}]"


function git_prompt_info()
{
	ref=$(git symbolic-ref HEAD 2> /dev/null) || return
	git_ps="\n$GIT_PS_PREFIX${ref#refs/heads/}$(parse_git_dirty)"
	git_ps+="$GIT_PS_SUFFIX"
	echo $git_ps
}


function parse_git_dirty()
{
	if [[ -n $(git status -s 2> /dev/null) ]];
	then
		echo "$GIT_PS_DIRTY"
	else
		echo "$GIT_PS_CLEAN"
	fi
}
