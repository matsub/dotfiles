" ==========================
"    EDITOR CONFIGURATION
" --------------------------
" control codes
set backspace=indent,eol,start

" syntax
filetype on
syntax on

" encoding
scriptencoding utf-8
set encoding=utf-8
set fileencoding=utf-8

" disable beep
set vb t_vb=

" word search
set ignorecase
set smartcase
set showmatch
set hlsearch

" hide tab & newline character
set nolist

" space & indent
set tabstop=4
set shiftwidth=4
set textwidth=0
set smarttab
set autoindent
set smartindent
set smarttab
set expandtab

" filename completion
set wildmenu
set wildignorecase
set wildignore=*.o,*.pyc
set nobackup
inoremap # X#

" tag depth
set tags=./tags,tags;~/

" Binary Edit
" http://d.hatena.ne.jp/rdera/20081022/1224682665
augroup BinaryXXD
	autocmd!
	autocmd BufReadPre *.bin let &binary=1
	autocmd BufReadPost * if &binary | silent %!xxd -g 2
	autocmd BufReadPost * set ft=xxd | endif
	autocmd BufWritePre * if &binary | %!xxd -r
	autocmd BufWritePre * endif
	autocmd BufWritePost * if &binary | silent %!xxd -g 2
	autocmd BufWritePost * set nomod | endif
augroup END

" ================
"    APPEARANCE
" ----------------
" appearance
set number
set title
set cursorline
set nowrap

" solarized
set t_Co=256
set background=dark
colorscheme gruvbox

" =============
"    MAPPING
" -------------
" mapping
noremap ; :
nnoremap <C-]> g<C-]>

" disable arrow key
noremap <xUp> <Nop>
noremap <xDown> <Nop>
noremap <xRight> <Nop>
noremap <xLeft> <Nop>
noremap <S-Up> :split<CR> :exe("tjump ".expand('<cword>'))<CR>
noremap <S-Down> <Nop>
noremap <S-Right> <Nop>
noremap <S-Left> :vsp<CR> :exe("tjump ".expand('<cword>'))<CR>

" window resize
nnoremap du :wincmd w<CR>:normal u<CR>:wincmd w<CR>

" ===============
"    NEOBUNDLE
" ---------------
" bundle
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))
	" plugins for system
	NeoBundleFetch 'Shougo/neobundle.vim'
	NeoBundle 'davidhalter/jedi-vim'
	NeoBundle 'soramugi/auto-ctags.vim'

	" plugins for appearance
	NeoBundle 'nathanaelkane/vim-indent-guides'
	NeoBundle 'altercation/vim-colors-solarized'

	" plugins for syntax
	NeoBundle 'hail2u/vim-css3-syntax'
call neobundle#end()

" Required:
filetype plugin indent on

" --------------------------
"    bundle configuration
" --------------------------
" auto-ctags
let g:auto_ctags_filetype_mode = 1

" jedi-vim
	autocmd FileType python let b:did_ftplugin = 1
	autocmd FileType python setlocal completeopt-=preview

" vim-indent-guides
	let g:indent_guides_auto_colors=0
	autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd   ctermbg=240
	autocmd VimEnter,Colorscheme * :hi IndentGuidesEven  ctermbg=238
	let g:indent_guides_enable_on_vim_startup=1
	let g:indent_guides_guide_size=1
