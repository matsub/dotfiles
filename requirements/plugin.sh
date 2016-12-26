# INSTALL vim-plug
# -----------------
curl -fLo .vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# install plugins on Vim
vim +PlugInstall +qall

# INSTALL **env
# --------------
anyenv install pyenv
anyenv install rbenv
# pyenv-virtualenv
git clone https://github.com/yyuu/pyenv-virtualenv.git \
    $(pyenv root)/plugins/pyenv-virtualenv
