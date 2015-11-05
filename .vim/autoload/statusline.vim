" Usage
" Set this (https://gist.github.com/baopham/1838072) for Non-ASCII Font
" Set its font-size 13pt
function statusline#on()
	" show commands on status line
	setlocal laststatus=2

	" statusline utils
	" set filestyle
	let outp = ""
	if &fileencoding != "utf-8"
		let outp .= ":" . &fileencoding . " "
	endif
	if &ff != "unix"
		let outp .= ":" . &ff
	endif
	let b:filestyle=outp

	" get current branch
	cd %:p:h
	silent let outp = system("git rev-parse --abbrev-ref HEAD")
	if outp[0:4] == "fatal"
		let b:currentbranch = ""
	else
		let b:currentbranch = outp[:-2]
	endif

	" set statusline
	" leftside
	" buffnumber currentbranch
	" fname modified
	setlocal statusline=%#Level1#\ [%n]
	setlocal statusline+=\ %#Arrow1#%{g:status_arrow}\ %#Level2#%{b:currentbranch}
	setlocal statusline+=\ %#Arrow2#%{g:status_arrow}\ %#Level3#%t
	setlocal statusline+=\ %#Arrow3#%{g:status_arrow}\ %#Level4#%m%r

	" rightside
	setlocal statusline+=%=
	" RO
	" row column filetype filestyle
	setlocal statusline+=%#RArrow3#%{g:status_arrow}\ %#Level3#%{&ft}%{b:filestyle}
	setlocal statusline+=\ %#RArrow2#%{g:status_arrow}\ %#Level2#%P
	setlocal statusline+=\ %#RArrow1#%{g:status_arrow}\ %#Level1#%l:%c\ \  
endfunction

function statusline#off()
	" set statusline
	" leftside
	" buffnumber currentbranch
	" fname modified
	setlocal statusline=\ [%n]
	setlocal statusline+=\ \ \ %{b:currentbranch}
	setlocal statusline+=\ \ \ %t
	setlocal statusline+=\ \ \ %m%r

	" rightside
	setlocal statusline+=%=
	" RO
	" row column filetype filestyle
	setlocal statusline+=\ \ %{b:filestyle}
	setlocal statusline+=\ \ \ %P
	setlocal statusline+=\ \ \ %l:%c\ \  
endfunction
