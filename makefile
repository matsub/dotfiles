filter: dotdir

dotdir:
	git config filter.dotdir.clean "tail -n +2 `pwd`/.zshenv"
	git config filter.dotdir.smudge "echo export DOTDIR=`pwd`; cat .zshenv"
