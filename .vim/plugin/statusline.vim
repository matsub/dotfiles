" status colors
" BuffName CurrentBranch FileName isModified ReadOnly
hi Level1 ctermfg=Brown ctermbg=180
hi Level2 ctermfg=Brown ctermbg=222
hi Level3 ctermfg=Brown ctermbg=223
hi Level4 ctermfg=DarkGreen ctermbg=White
" Ruler Filetype FileStyle
" Separator
hi Arrow1 ctermfg=180 ctermbg=222
hi Arrow2 ctermfg=222 ctermbg=223
hi Arrow3 ctermfg=223 ctermbg=White
hi RArrow3 ctermfg=White ctermbg=223
hi RArrow2 ctermfg=223 ctermbg=222
hi RArrow1 ctermfg=222 ctermbg=180
silent let g:status_arrow=system("echo -e '\ue0b0'")[:-2]

autocmd BufEnter * call statusline#on()
autocmd BufLeave * call statusline#off()
