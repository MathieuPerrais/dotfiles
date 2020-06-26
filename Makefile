install: install-zshrc 

install-zshrc:
	rm -rf ~/.zshrc
	ln -s `pwd`/.zshrc ~/.zshrc