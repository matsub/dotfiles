setlocal tabstop=2
setlocal shiftwidth=2

inoremap . .<C-X><C-O><C-P>

" ================================
"    CONFIGURATIONS FOR PLUGINS
" --------------------------------
if has('nvim')
    " neomake
    " -------
    let g:neomake_javascript_enabled_makers = ['eslint']
endif
