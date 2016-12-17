" ==================
"    KEY BINDINGS
" ------------------
" searching
nnoremap / /\v
nnoremap <Down> :noh<CR>

" file open
nnoremap gv :vertical wincmd f<CR>
nnoremap gs :wincmd f<CR>

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
