
.PHONY: all fish shell neovim

all: fish shell
fish:
	-mkdir -p ~/.config/fish
	-rm ~/.config/fish/config.fish
	-rm -r ~/.config/fish/functions
	ln -s $(shell realpath fish/config.fish) ~/.config/fish/config.fish 
	ln -s $(shell realpath fish/functions) ~/.config/fish/functions

shell:
	-rm ~/.zprofile
	ln -s $(shell realpath zprofile) ~/.zprofile 
	-rm -r ~/.config/kitty
	ln -s $(shell realpath kitty) ~/.config/kitty

neovim:
	-rm ~/.config/nvim
	ln -s $(shell realpath nvim) ~/.config/nvim
