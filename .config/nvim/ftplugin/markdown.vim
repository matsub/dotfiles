setlocal textwidth=80
nnoremap <F7> :TableFormat<CR>


" ================================
"    CONFIGURATIONS FOR PLUGINS
" --------------------------------
if has('nvim')
    " previm
    " ------
    let g:previm_open_cmd = 'open'
    nnoremap <F5> :PrevimOpen<CR>

    " vim-markdown
    " ------------
    set spelllang=en,cjk

    let g:vim_markdown_folding_disabled = 1
    let g:vim_markdown_math = 1
    let g:vim_markdown_frontmatter = 1
endif
