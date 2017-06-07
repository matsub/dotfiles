call plug#begin(expand('~/.vim/bundle/'))
" ============
"    SYSTEM
" ------------
" - global
Plug 'scrooloose/nerdtree'
Plug 'neomake/neomake'
Plug 'bronson/vim-visual-star-search'

" - python
Plug 'davidhalter/jedi-vim', {'for': 'python'}

" - markdown
Plug 'kannokanno/previm', {'for': 'markdown'}
Plug 'godlygeek/tabular', {'for': 'markdown'}


" ================
"    APPEARANCE
" ----------------
Plug 'https://bitbucket.org/matsub/vim-statusline.git'
Plug 'https://bitbucket.org/matsub/vim-binary.git'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'flazz/vim-colorschemes'


" ============
"    SYNTAX
" ------------
" - python
Plug 'hynek/vim-python-pep8-indent', {'for': 'python'}

" - html5 & css3 & markdown
Plug 'plasticboy/vim-markdown', {'for': 'markdown'}

" - ES6
" --- Vue.js
Plug 'posva/vim-vue'
call plug#end()
filetype plugin indent on


" ================================
"    CONFIGURATIONS FOR PLUGINS
" --------------------------------
" NERDTree
" --------
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
nnoremap <silent><C-e> :NERDTreeToggle<CR>

" neomake
" -------
autocmd! BufWritePost * Neomake

" vim-indent-guides
" -----------------
let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd   ctermbg=240
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven  ctermbg=238
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_guide_size=1

" plugged colorscheme
" -------------------
colorscheme gruvbox
