filter: dotdir

dotdir:
	git config filter.dotdir.clean "tail -n +1 `pwd`/.zshrc"
	git config filter.dotdir.smudge "echo export DOTDIR=`pwd`; cat .zshrc"
