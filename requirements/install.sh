# INSTALL Homebrew
# -----------------
sh requirements/brew/install.sh
# install formulas
pushd requirements/brew
brew bundle
popd
