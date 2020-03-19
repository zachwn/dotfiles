.PHONY: all layout fish

all: layout fish


layout:
	mkdir -p ~/.config
	mkdir -p ~/Code/go/src ~/Code/go/pkg ~/Code/go/bin

fish:
	ln -sf "$(shell readlink -f ./fish)" ~/.config/fish
