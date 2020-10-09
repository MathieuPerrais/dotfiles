install: install-aliases install-zshrc 

install-zshrc:
	rm -rf ~/.zshrc
	ln -s `pwd`/.zshrc ~/.zshrc

install-aliases:
	rm -rf ~/.aliases
	ln -s `pwd`/.aliases ~/.aliases