set makeprg=nosetests
setlocal wildignore=*.pyc


" ================================
"    CONFIGURATIONS FOR PLUGINS
" --------------------------------
" syntastic
" ---------
let g:syntastic_python_checkers = ['pyflakes', 'pep8']


" auto-ctags
" ----------
setlocal tags+=python.tags
let g:auto_ctags_filetype_mode=1


" jedi-vim
" --------
setlocal completeopt-=preview
