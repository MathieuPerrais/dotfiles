install: install-aliases install-zshrc install-hosts-file install-git-config

install-zshrc:
	rm -rf ~/.zshrc
	ln -s `pwd`/.zshrc ~/.zshrc

install-aliases:
	rm -rf ~/.aliases
	ln -s `pwd`/.aliases ~/.aliases

install-hosts-file:
	sudo cp `pwd`/hosts /etc/hosts

install-git-config:
	rm -rf ~/.gitconfig ~/.gitignore_global ~/.stCommitMsg
	ln -s `pwd`/.gitconfig ~/.gitconfig
	ln -s `pwd`/.gitignore_global ~/.gitignore_global
	ln -s `pwd`/.stCommitMsg ~/.stCommitMsg