call plug#begin(expand('~/.vim/bundle/'))
" ============
"    SYSTEM
" ------------
" - global
Plug 'scrooloose/nerdtree' | Plug 'jistr/vim-nerdtree-tabs'
Plug 'bronson/vim-visual-star-search'
Plug 'w0rp/ale'
Plug 'sbdchd/vim-shebang'

" - python
Plug 'davidhalter/jedi-vim', {'for': 'python'}

" - go
Plug 'fatih/vim-go', {'for': 'go'} | Plug 'jodosha/vim-godebug'

" - markdown
Plug 'kannokanno/previm', {'for': 'markdown'}
Plug 'godlygeek/tabular', {'for': 'markdown'}


" ================
"    APPEARANCE
" ----------------
Plug 'https://bitbucket.org/matsub/vim-statusline.git'
Plug 'https://bitbucket.org/matsub/vim-binary.git'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'AlessandroYorba/Sierra'


" ============
"    SYNTAX
" ------------
" - python
Plug 'hynek/vim-python-pep8-indent', {'for': 'python'}

" - html5 & css3 & markdown
Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
Plug 'othree/html5.vim'

" - ES6
Plug 'othree/yajs'
"   - typescript
Plug 'leafgarland/typescript-vim'

" - terraform
Plug 'hashivim/vim-terraform'

" - fish
Plug 'dag/vim-fish'

" - Docker
Plug 'ekalinin/Dockerfile.vim'
call plug#end()


" ================================
"    CONFIGURATIONS FOR PLUGINS
" --------------------------------
" NERDTree
" --------
nnoremap <silent><C-e> :NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_console_startup=2

" ale
" ---
let g:ale_linters = {
            \'vue': ['eslint'],
            \'html': [],
            \}
nmap <silent> <C-p> <Plug>(ale_previous_wrap)
nmap <silent> <C-n> <Plug>(ale_next_wrap)

" vim-shebang
" ---
let g:shebang#shebangs = {
            \ 'python': "#!/usr/bin/env python\n# -*- coding: utf-8 -*-",
            \ 'sh': "#!/bin/sh"
            \ }

au BufNewFile * ShebangInsert

" vim-indent-guides
" -----------------
let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd   ctermbg=240
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven  ctermbg=238
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_guide_size=1
let g:indent_guides_indent_levels=4

" plugged colorscheme
" -------------------
let g:sierra_Pitch = 1
if !empty(glob("~/.vim/bundle/Sierra/colors/sierra.vim"))
    colorscheme sierra
endif
hi Normal guibg=NONE ctermbg=NONE
