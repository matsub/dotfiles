call plug#begin(expand('~/.vim/bundle/'))
" ============
"    SYSTEM
" ------------
" - global
Plug 'scrooloose/nerdtree' | Plug 'jistr/vim-nerdtree-tabs'
Plug 'neomake/neomake'
Plug 'bronson/vim-visual-star-search'

" - python
Plug 'davidhalter/jedi-vim', {'for': 'python'}

" - go
Plug 'fatih/vim-go', {'for': 'go'}

" - javascript
Plug 'ternjs/tern_for_vim', {'for': 'javascript', 'do': 'npm install'}

" - markdown
Plug 'kannokanno/previm', {'for': 'markdown'}
Plug 'godlygeek/tabular', {'for': 'markdown'}


" ================
"    APPEARANCE
" ----------------
Plug 'https://bitbucket.org/matsub/vim-statusline.git'
Plug 'https://bitbucket.org/matsub/vim-binary.git'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'morhetz/gruvbox'


" ============
"    SYNTAX
" ------------
" - python
Plug 'hynek/vim-python-pep8-indent', {'for': 'python'}
"   - jinja
Plug 'lepture/vim-jinja', {'for': ['html', 'jinja']}

" - elixir
Plug 'elixir-lang/vim-elixir'

" - html5 & css3 & markdown
Plug 'plasticboy/vim-markdown', {'for': 'markdown'}

" - ES6
Plug 'othree/yajs', {'for': ['javascript', 'html']}
Plug 'othree/es.next.syntax.vim', {'for': ['javascript', 'html']}
call plug#end()


" ================================
"    CONFIGURATIONS FOR PLUGINS
" --------------------------------
" NERDTree
" --------
nnoremap <silent><C-e> :NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_console_startup=2

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
let g:indent_guides_indent_levels=4

" plugged colorscheme
" -------------------
colorscheme gruvbox
