"setlocal textwidth=80
setlocal nowrap


" ================================
"    CONFIGURATIONS FOR PLUGINS
" --------------------------------
if has('nvim')
    " vim-livedown
    " ------
    let g:livedown_browser = 'chrome'
    nnoremap <F5> :LivedownToggle<CR>

    " tabular
    " -------
    nnoremap <F7> :TableFormat<CR>

    " vim-markdown
    " ------------
    set spelllang=en,cjk

    let g:vim_markdown_folding_disabled = 1
    let g:vim_markdown_math = 1
    let g:vim_markdown_frontmatter = 1
endif
