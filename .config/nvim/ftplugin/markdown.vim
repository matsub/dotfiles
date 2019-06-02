"setlocal textwidth=80
setlocal nowrap

" =============================
"    HackMD like indentation
" -----------------------------
function! s:GetSynStack()
    return map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

function! s:IndentLikeHackMD()
    " simply return a tab character if the cursor is not on list item line
    if index(s:GetSynStack(), 'mkdListItemLine') < 0
        return '	' " here is ^V^I
    endif

    return '' " here is ^V^T
endfunc
" ------------------------------
"    /HackMD like indentation
" =============================

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

    inoremap <expr> <Tab> <SID>IndentLikeHackMD()
endif
