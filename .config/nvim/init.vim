runtime! config/system.vim " $XDG_CONFIG_HOME/nvim/config/system.vim
runtime! config/appearance.vim " $XDG_CONFIG_HOME/nvim/config/appearance.vim
runtime! config/keybinding.vim " $XDG_CONFIG_HOME/nvim/config/keybinding.vim

if has('nvim')
    runtime! config/plugins.vim " $XDG_CONFIG_HOME/nvim/config/plugins.vim
    runtime! config/neoshit.vim " $XDG_CONFIG_HOME/nvim/config/neoshit.vim
endif

function! g:AHO()
    >>
endfunc
