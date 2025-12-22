
if status is-interactive

	alias vi="nvim"
	alias l="gls --color=auto"
	alias la="gls -a --color=auto" 
	alias gcd="cd (git rev-parse --show-toplevel)"
	function last_history_item
		echo $history[1]
	end
	abbr -a !! --position anywhere --function last_history_item

end
