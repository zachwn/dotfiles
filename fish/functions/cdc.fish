function cdc
	cd "$HOME/Code" && cd (fd -t d -d 1 | fzf)
end
