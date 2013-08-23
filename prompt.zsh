# prompt.zsh
#
# Copyright (c) 2013 Einar Uvsløkk
# DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE

function get_termwidth()
{
	local TERMWIDTH
	(( TERMWIDTH = ${COLUMNS} - 3 ))
	echo ${TERMWIDTH}
}

local return_value="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

case ${USER} in
	root) NCOLOR="red";;
	*)    NCOLOR="green";;
esac

PROMPT='[%{$fg_bold[cyan]%}%$(get_termwidth)<...<%~%<<%{$reset_color%}]\
$(git_prompt_info)
[%{$fg_bold[${NCOLOR}]%}%n%{$reset_color%}]%{$fg[red]%}%(!.#.»)%{$reset_color%} '
RPROMPT='${return_value} [%{$fg[green]%}%T%f]'
