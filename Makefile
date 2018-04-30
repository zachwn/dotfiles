.PHONY: all layout git bash

all: git layout bash

git:
	@git config --global user.name "Zachary Nack"
	@git config --global user.email "zachary.nack@icloud.com"

layout:
	@mkdir -p ~/.config ~/.local/bin
	@mkdir -p ~/Code/go/{src,pkg,bin}

bash: layout
	@rm -f ~/.bash_profile ~/.inputrc
	@ln -s $(abspath bash/bash_profile) ~/.bash_profile
	@ln -s $(abspath bash/inputrc) ~/.inputrc
