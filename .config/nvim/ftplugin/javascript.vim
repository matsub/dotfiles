setlocal tabstop=2
setlocal shiftwidth=2

" ================================
"    CONFIGURATIONS FOR PLUGINS
" --------------------------------
if has('nvim')
    " neomake
    " -------
    let g:neomake_javascript_enabled_makers = ['eslint']
endif
