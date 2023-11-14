
g-uncommitted() {
	git diff --name-only
}

function pt(){
	pw=$(pass show "$1")
	tmux set-buffer "$pw"
}

_pt_pass()
{
        COMPREPLY=()
	local cur="${COMP_WORDS[COMP_CWORD]}"
	_pass_complete_entries
}

complete -o filenames -F _pt_pass pt
