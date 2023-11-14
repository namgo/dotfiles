# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ $PS1 && -f /usr/local/share/bash-completion/bash_completion.sh ]] && \
	        source /usr/local/share/bash-completion/bash_completion.sh

if [[ -f /usr/local/share/git-core/contrib/completion/git-prompt.sh ]]; then
	        source /usr/local/share/git-core/contrib/completion/git-prompt.sh
		        PS1='[\u@\h:\W$(__git_ps1 "(%s)")]\$ '
fi

[[ -f $HOME/.custom.bash ]] && source $HOME/.custom.bash
