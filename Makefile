.PHONY: all mac pkgin tools

gopath:=${HOME}/Code/go
pathsd:=$(addprefix /etc/, $(wildcard paths.d/*))

xdg:=$(addprefix ${HOME}/.local/, bin cache share src) ${HOME}/.config

mac_pkgs:="binutils python3 fish ffmpeg4 gh"

all: $(xdg) $(gopath) fish tools

mac: all $(pathsd)
	@-xcode-select --install || :
	@-pkgin install -y $(mac_pkgs)

$(pathsd): 
	cp $(subst /etc/,./,"$@") $@

$(gopath):
	mkdir -p $(addprefix $(gopath)/, src, pkg, bin)

$(xdg):
	mkdir -p $@

tools:
	ln -sf "$(realpath ./fish)" "$(HOME)/.config/fish"
	ln -sf "$(realpath ./vim)" "$(HOME)/.vim"
	git config --global user.name "Zachary N"
	git config --global user.email "zwnathoo@ualberta.ca"
	
