.PHONY: all layout git bash vim zsh fish

all: git layout bash vim

git:
	@git config --global user.name "Zachary Nack"
	@git config --global user.email "zachary.nack@icloud.com"

layout:
	@mkdir -p ~/.local/bin
	@mkdir -p ~/Code/go/{src,pkg,bin}
	@mkdir -p ~/.config

bash: layout
	@rm -f ~/.bash_profile ~/.inputrc
	@ln -s $(abspath bash/bash_profile) ~/.bash_profile
	@ln -s $(abspath bash/inputrc) ~/.inputrc

vim:
	@rm -f ~/.vim
	@ln -s $(abspath vim) ~/.vim

zsh:
	@ln -s $(abspath zsh/zshrc) ~/.zshrc
	@ln -s $(abspath zsh/zshenv) ~/.zshenv

fish:
	@ln -s $(abspath fish) ~/.config/fish
