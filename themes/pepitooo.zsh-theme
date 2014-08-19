# Based on tjkirch.zsh-theme to ajust to color I want and I like.

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}⚡"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='%{$fg_bold[green]%}%n%{$reset_color%}@%{$fg_bold[red]%}%M%{$reset_color%}:%{$fg_bold[blue]%}[$(pwd)]%{$reset_color%}
> ' # default prompt

function prompt_char {
	if [ $UID -eq 0 ]; then echo "%{$fg[red]%}#%{$reset_color%}"; else echo $; fi
}

PROMPT='%(?, ,%{$fg_bold[red]%}FAIL: $?%{$reset_color%})
%{$fg_bold[green]%}%n%{$reset_color%}@%{$fg_bold[red]%}%m%{$reset_color%}: %{$fg_bold[blue]%}$(pwd)%{$reset_color%}$(git_prompt_info)
%_$(prompt_char) '

RPROMPT='%{$fg[green]%}[%*]%{$reset_color%}'
