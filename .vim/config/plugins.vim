let $PATH = "~/.pyenv/shims:".$PATH
call plug#begin(expand('~/.vim/bundle/'))
" ============
"    SYSTEM
" ------------
" - global
Plug 'scrooloose/nerdtree'
Plug 'vim-syntastic/syntastic'
Plug 'bronson/vim-visual-star-search'
Plug 'soramugi/auto-ctags.vim', {'for': ['python','c','tex']}

" - python
Plug 'davidhalter/jedi-vim', {'for': 'python'}
            \ | Plug 'lambdalisue/vim-pyenv', {'for': 'python'}

" - markdown
Plug 'kannokanno/previm', {'for': 'markdown'}


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
Plug 'kevinw/pyflakes-vim', {'for': 'python'}
Plug 'lepture/vim-jinja'

" - html5 & css3 & markdown
Plug 'hail2u/vim-css3-syntax', {'for': ['css', 'scss']}
Plug 'othree/html5-syntax.vim', {'for': ['html', 'markdown']}
Plug 'gabrielelana/vim-markdown', {'for': 'markdown'}

" - ES6
Plug 'othree/yajs.vim', {'for': 'javascript'}
Plug 'othree/es.next.syntax.vim', {'for': 'javascript'}
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

" vim-indent-guides
" -----------------
let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd   ctermbg=240
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven  ctermbg=238
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_guide_size=1

" plugged colorscheme
" -------------------
colorscheme moonshine

" syntastic
" ---------
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
