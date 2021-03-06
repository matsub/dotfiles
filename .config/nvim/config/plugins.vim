call plug#begin(expand('~/.vim/bundle/'))

"   GLOBAL
" ==========
Plug 'scrooloose/nerdtree'
            \| Plug 'jistr/vim-nerdtree-tabs'
            \| Plug 'albfan/nerdtree-git-plugin'
Plug 'w0rp/ale'
Plug 'matsub/statusline.vim'
Plug 'sbdchd/vim-shebang'
Plug 'bronson/vim-visual-star-search'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'AlessandroYorba/Sierra'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'


"   GRAMMATICAL
" ===============
" Plug 'rhysd/vim-grammarous'


"   BINARY
" ==========
Plug 'matsub/xxd.vim'


"   Python
" ==========
Plug 'davidhalter/jedi-vim', {'for': 'python'}
Plug 'hynek/vim-python-pep8-indent', {'for': 'python'}


"    Go
" ========
Plug 'fatih/vim-go'
            \| Plug 'jodosha/vim-godebug'
Plug 'nsf/gocode', {'rtp': 'vim/'}


"   JavaScript
" ==============
Plug 'othree/yajs'
Plug 'leafgarland/typescript-vim'
Plug 'mattn/emmet-vim'
Plug 'mxw/vim-jsx'


"   HTML5
" =========
Plug 'othree/html5.vim'
Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
Plug 'shime/vim-livedown', {'for': 'markdown'}
Plug 'godlygeek/tabular', {'for': 'markdown'}


"   Haskell
" ===========
Plug 'neovimhaskell/haskell-vim'


"   HCL
" =======
Plug 'hashivim/vim-terraform'


"   fish
" ========
Plug 'dag/vim-fish'


"   Dockerfile
" ==============
Plug 'ekalinin/Dockerfile.vim'


"   WebRTC SDP
" ==============
Plug 'matsub/rtcweb-sdp.vim'


"   GitHub Actions
" ==================
Plug 'matsub/github-actions.vim'

"   C++
" =======
Plug 'bfrg/vim-cpp-modern'
call plug#end()

" ================================
"    CONFIGURATIONS FOR PLUGINS
" --------------------------------
" NERDTree
" --------
nnoremap <silent><C-e> :NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_console_startup=2

" NERDTree-git
" ------------
let g:NERDTreeIndicatorMapCustom = {
            \ "Modified"  : "M",
            \ "Staged"    : "A",
            \ "Untracked" : "?",
            \ "Renamed"   : "R",
            \ "Unmerged"  : "U",
            \ "Deleted"   : "D",
            \ "Dirty"     : "✗",
            \ "Clean"     : "✔︎",
            \ 'Ignored'   : '_',
            \ "Unknown"   : "_"
            \ }

" ale
" ---
let g:ale_linters = {
            \'vue': ['eslint'],
            \'html': [],
            \'cpp': ['clang', 'cppcheck', 'cpplint'],
            \'python': ['pycodestyle'],
            \}
let g:ale_fixers = {
            \'javascript': ['eslint'],
            \'cpp': ['clang-format'],
            \}
let g:ale_fix_on_save = 1
nmap <silent> <C-p> <Plug>(ale_previous_wrap)
nmap <silent> <C-n> <Plug>(ale_next_wrap)

" vim-shebang
" ---
let g:shebang#shebangs = {
            \ 'python': "#!/usr/bin/env python3\n# -*- coding: utf-8 -*-",
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
