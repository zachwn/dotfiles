.PHONY: all layout fish vim

all: layout fish vim


layout:
	mkdir -p ~/.config
	mkdir -p ~/Code/go/src ~/Code/go/pkg ~/Code/go/bin

fish:
	ln -sf "$(shell readlink -f ./fish)" ~/.config/fish

vim:
	ln -sf "$(shell readlink -f ./vim)" ~/.vim
