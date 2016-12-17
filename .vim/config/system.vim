" ============
"    SYSTEM
" ------------
" GENERAL BEHAVIOR
" ----------------
" make behavior more Vim-friendly
set nocompatible

" syntax
syntax on

" make program
set makeprg=make

" briefly jump to the matching bracket
set showmatch
set matchtime=3

" won't fix EOL
set nofixeol
" allow backspacing over,
"   - indent: autoindent
"   - eol   : line breaks
"   - start : start of insert
set backspace=indent,eol,start

" path of ctag file
set tags=./tags,tags;~/


" FILE I/O BEHAVIOR
" -----------------
" reload a file when detect it has been changed outside
set autoread

" won't make backup
set nobackup

" allow to load external resource file in the current directory.
set exrc
set secure


" EDITING BEHAVIOR
" ----------------
" behavior of Insert mode completion
set completeopt=menuone,preview
set showfulltag

" disable beep
set vb t_vb=

" direction of split window
set splitbelow
set splitright

" if the file has been opened, move to that buffer
set switchbuf=useopen,split


" SEARCHING BEHAVIOR
" ------------------
" ignore case in search patterns
set ignorecase

" override `ignorecase` if the pattern contains upper case
set smartcase

" highlight matched patterns
set hlsearch

" enable incremental search
set incsearch

" hide tab & newline character
set nolist


" INDENTATION BEHAVIOR
" --------------------
" expand a Tab to spaces
set expandtab
set smarttab

" number of spaces that a Tab counts for
set tabstop=4

" number of spaces inserted automatically
set shiftwidth=4

" maximum width of a line
set textwidth=80
set cc=+1,+2

" do smart autoindenting when starting a new line
set autoindent
set smartindent


" EXPLORING BEHAVIOR
" ------------------
" complete longest match and show expectations
set wildmenu
set wildmode=longest,full

" ignore case
set wildignorecase
inoremap # X#
