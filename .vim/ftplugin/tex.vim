setlocal tabstop=2
setlocal shiftwidth=2
setlocal textwidth=0

setlocal wildignore+=*.aux


" ================================
"    CONFIGURATIONS FOR PLUGINS
" --------------------------------
" auto-ctags
setlocal tags+=tex.tags
let g:auto_ctags_filetype_mode = 1
