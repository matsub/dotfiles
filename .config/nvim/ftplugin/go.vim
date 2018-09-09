setlocal shiftwidth=4
setlocal tabstop=4


" ================================
"    CONFIGURATIONS FOR PLUGINS
" --------------------------------
if has('nvim')
    " vim-go
    " ======
    nnoremap <C-Down> :GoFmt<CR>
endif
