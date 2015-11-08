" ==========================
"    EDITOR CONFIGURATION
" --------------------------
	" editor config
	set autoread
	set nobackup
	set showmatch
	set matchtime=3
	set exrc
	set secure

	" control codes
	set backspace=indent,eol,start

	" syntax
	filetype on
	syntax on

	" completion
	set completeopt=menuone,preview
	set showfulltag

	" fold
	set foldmethod=indent
	set foldminlines=4
	set foldnestmax=4

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
	set noshowcmd

	" color set
	set t_Co=256
	set background=dark
	colorscheme gruvbox/colors/gruvbox

" =============
"    MAPPING
" -------------
	" mapping
	nnoremap ; :
	nnoremap <C-]> g<C-]>

	" fold
	nnoremap <Space> zMzv
	nnoremap <CR> za

	" arrow key
		" fold
		nnoremap <xUp> zk
		nnoremap <xDown> zj
		nnoremap <xRight> za
		nnoremap <xLeft> zMzv

		" tag jump
		nnoremap <C-Up> :split<CR> :exe("tjump ".expand('<cword>'))<CR>
		nnoremap <C-Left> :vsp<CR> :exe("tjump ".expand('<cword>'))<CR>

		" QuickFix
		nnoremap <C-Down> <Nop>
		nnoremap <C-Right> <Nop>

		" 
		nnoremap <S-Up> <Nop>
		nnoremap <S-Down> <Nop>
		nnoremap <S-Right> <Nop>
		nnoremap <S-Left> <Nop>

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
