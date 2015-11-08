" status colors
" See this (https://en.wikipedia.org/wiki/File:Xterm_256color_chart.svg)
let s:base = 8
let s:notice = 10
let s:font = 15

function statusline#set_color(color1, color2)
	exec "hi Base ctermfg=".s:notice ." ctermbg=".s:base
	exec "hi Level1 ctermfg=".s:font ." ctermbg=".a:color1
	exec "hi Level2 ctermfg=".s:font ." ctermbg=".a:color2
	exec "hi Level3 ctermfg=".s:font ." ctermbg=".s:base
	exec "hi Arrow1 ctermfg=".a:color1 ." ctermbg=".a:color2
	exec "hi Arrow2 ctermfg=".a:color2 ." ctermbg=".s:base
endfunction

" separator
let g:stl_arrow=system("echo -e '\ue0b0'")[:-2]
let g:stl_rarrow=system("echo -e '\ue0b2'")[:-2]

call statusline#set_color(12, 4)
autocmd InsertEnter * call statusline#set_color(10, 2)
autocmd InsertLeave * call statusline#set_color(12, 4)
autocmd BufEnter * call statusline#read()
autocmd BufLeave,WinLeave * call statusline#off()
autocmd BufEnter,WinEnter * call statusline#on()
