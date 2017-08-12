set makeprg=nosetests
setlocal wildignore=*.pyc

" call autopep8
" check this: " http://ton-up.net/technote/2013/11/26/vim-python-style-check-and-fix/
function! Preserve(command)
    " Save the last search.
    let search = @/
    " Save the current cursor position.
    let cursor_position = getpos('.')
    " Save the current window position.
    normal! H
    let window_position = getpos('.')
    call setpos('.', cursor_position)
    " Execute the command.
    execute a:command
    " Restore the last search.
    let @/ = search
    " Restore the previous window position.
    call setpos('.', window_position)
    normal! zt
    " Restore the previous cursor position.
    call setpos('.', cursor_position)
endfunction

function! Autopep8()
    call Preserve(':silent %!autopep8 -')
endfunction

nnoremap <F5> :call Autopep8()<CR>


" ================================
"    CONFIGURATIONS FOR PLUGINS
" --------------------------------
if has('nvim')
    " neomake
    " -------
    let g:neomake_python_enabled_makers = ['pyflakes', 'pep8']


    " jedi-vim
    " --------
    setlocal completeopt-=preview
    let g:jedi#popup_select_first = 0
    let g:jedi#show_call_signatures = "0"
endif
