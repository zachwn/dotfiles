.PHONY: fish

fish:
	ln -sf "$(shell readlink -f ./fish)" ~/.config/fish
