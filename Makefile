.PHONY: all layout fish vim

all: layout fish vim


layout:
	mkdir -p ~/.config
	mkdir -p ~/Code/go/src ~/Code/go/pkg ~/Code/go/bin

fish:
	ln -sf "$(realpath ./fish)" "$(HOME)/.config/"

vim:
    ln -sf "$(realpath ./vim)" "$(HOME)/.vim"
