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
