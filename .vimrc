" =============
"    PLUGINS
" -------------
let $PATH = "~/.pyenv/shims:".$PATH
call plug#begin(expand('~/.vim/bundle/'))
" plugins for system
Plug 'davidhalter/jedi-vim', {'for': 'python'}
Plug 'lambdalisue/vim-pyenv', {'for': 'python'}
Plug 'soramugi/auto-ctags.vim', {'for': ['python', 'c', 'tex']}
Plug 'kannokanno/previm', {'for': 'markdown'}
Plug 'bronson/vim-visual-star-search'

" plugins for appearance
Plug 'nathanaelkane/vim-indent-guides'
Plug 'morhetz/gruvbox'

" plugins for syntax
Plug 'kevinw/pyflakes-vim', {'for': 'python'}
Plug 'hail2u/vim-css3-syntax', {'for': ['css', 'scss']}
Plug 'othree/html5-syntax.vim', {'for': ['html', 'markdown']}
Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
Plug 'othree/yajs.vim', {'for': 'javascript'}
filetype plugin indent on
call plug#end()

" ================================
"    CONFIGURATIONS FOR PLUGINS
" --------------------------------
" auto-ctags
autocmd Filetype python,c,tex let g:auto_ctags_filetype_mode = 1

" jedi-vim
autocmd FileType python let b:did_ftplugin = 1
autocmd FileType python setlocal completeopt-=preview

" vim-indent-guides
let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd   ctermbg=240
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven  ctermbg=238
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_guide_size=1

" previm
autocmd Filetype markdown let g:previm_open_cmd = 'open'

" pyflakes-vim
" let g:pyflakes_use_quickfix = 0

" ==========================
"    EDITOR CONFIGURATION
" --------------------------
" editor config
set nocompatible
set autoread
set nobackup
set showmatch
set matchtime=3
set exrc
set secure

" control codes
set backspace=indent,eol,start

" syntax
syntax on

" completion
set completeopt=menuone,preview
set showfulltag

" fold
set foldmethod=indent
set foldminlines=24
set foldnestmax=2

" disable beep
set vb t_vb=

" word search
set ignorecase
set smartcase
set hlsearch
set incsearch

" hide tab & newline character
set nolist

" space & indent
set tabstop=4
set shiftwidth=4
set textwidth=80
set autoindent
set smartindent
set smarttab
set expandtab

" filename completion
set wildmenu
set wildignorecase
set wildignore=*.o,*.pyc
inoremap # X#

" windows
set splitbelow
set splitright
set switchbuf=useopen,split
set noequalalways

" tag depth
set tags=./tags,tags;~/

" ================
"    APPEARANCE
" ----------------
" appearance
set number
set cursorline
set title
set nowrap
set display=lastline

" color set
set t_Co=256
set background=dark
colorscheme gruvbox

" =============
"    MAPPING
" -------------
" searching
nnoremap / /\v
nnoremap <Down> :noh<CR>

" file open
nnoremap g<CR> :vertical wincmd f<CR>

" placeholding
inoremap <C-j> <Esc>/<++><CR><Esc>cf>

" fold
nnoremap <Space> zMzv
nnoremap <CR> za

" tag jump
nnoremap <C-]> g<C-]>
nnoremap <C-Up> :split<CR> :exe("tjump ".expand('<cword>'))<CR>
nnoremap <C-Left> :vsp<CR> :exe("tjump ".expand('<cword>'))<CR>

" QuickFix
nnoremap <C-Down> :make<CR>:copen<CR><CR>
nnoremap <C-Right> <Nop>

" buffer moving
nnoremap [b :bprev<CR>
nnoremap ]b :bnext<CR>
nnoremap [q :cprev<CR>
nnoremap ]q :cnext<CR>
nnoremap [z zk
nnoremap ]z zj

" command mode
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" disable embedded keymaps
vnoremap K <Nop>
nnoremap K <Nop>
nnoremap <Up> <Nop>
nnoremap <Right> <Nop>
nnoremap <Left> <Nop>
nnoremap <S-Up> <Nop>
nnoremap <S-Down> <Nop>
nnoremap <S-Right> <Nop>
nnoremap <S-Left> <Nop>
