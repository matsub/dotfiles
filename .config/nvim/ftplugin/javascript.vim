setlocal tabstop=2
setlocal shiftwidth=2

" ================================
"    CONFIGURATIONS FOR PLUGINS
" --------------------------------
if has('nvim')
    " neomake
    " -------
    let g:neomake_javascript_enabled_makers = ['eslint']

    " jscomplete-vim
    " -------
    let g:jscomplete_use = ['moz', 'es6th']
    inoremap . .<C-X><C-O><C-P>
    setlocal omnifunc=jscomplete#CompleteJS
endif
