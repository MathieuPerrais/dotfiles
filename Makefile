install: install-aliases install-zshrc install-hosts-file

install-zshrc:
	rm -rf ~/.zshrc
	ln -s `pwd`/.zshrc ~/.zshrc

install-aliases:
	rm -rf ~/.aliases
	ln -s `pwd`/.aliases ~/.aliases

install-hosts-file:
	sudo cp `pwd`/hosts /etc/hosts