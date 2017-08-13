setlocal tabstop=2
setlocal shiftwidth=2
setlocal omnifunc=javascriptcomplete#CompleteJS

" ================================
"    CONFIGURATIONS FOR PLUGINS
" --------------------------------
if has('nvim')
    " neomake
    " -------
    let g:neomake_javascript_enabled_makers = ['eslint']

    " vim-better-javascript-completion
    let g:vimjs#smartcomplete = 1
    let g:vimjs#chromeapis = 1
endif
