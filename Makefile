install: install-aliases install-zshrc install-hosts-file install-git-config install-quicklook-extensions

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

install-quicklook-extensions:
	rm -rf ~/Library/QuickLook/ProvisionQL.qlgenerator ~/Library/QuickLook/QLMarkdown.qlgenerator
	ln -s `pwd`/bin/quicklook/ProvisionQL.qlgenerator ~/Library/QuickLook/ProvisionQL.qlgenerator
	ln -s `pwd`/bin/quicklook/QLMarkdown.qlgenerator ~/Library/QuickLook/QLMarkdown.qlgenerator
