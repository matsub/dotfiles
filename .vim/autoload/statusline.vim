" Usage
" Set this (https://gist.github.com/baopham/1838072) for Non-ASCII Font

function statusline#read()
	" show commands on status line
	setlocal laststatus=2

	" statusline utils
	" set filestyle
	let l:fst = []
	if &fenc != "utf-8"
		call add(l:fst, &fenc)
	endif
	if &ff != "unix"
		call add(l:fst, &ff)
	endif
	let b:filestyle = join(l:fst, ":")

	" get current branch
	let l:outp = system("git rev-parse --abbrev-ref HEAD")
	if outp[0:4] == "fatal"
		let b:currentbranch = ""
	else
		let b:currentbranch = outp[:-2]
	endif
endfunction

function statusline#on()
	" set statusline
	" leftside
	setlocal statusline=%#Level1#\ [%n]
	setlocal statusline+=\ \ %#Arrow1#%{g:stl_arrow}\ %#Level2#%{b:currentbranch}
	setlocal statusline+=\ %#Arrow2#%{g:stl_arrow}\ %#Level3#%t\ %#Base#%m%r

	" rightside
	setlocal statusline+=%=\ %#Level3#%{&ft}
	setlocal statusline+=\ %#Arrow2#%{g:stl_rarrow}%#Level2#\ %{b:filestyle}
	setlocal statusline+=\ %#Arrow1#%{g:stl_rarrow}%#Level1#\ \ %P\ \ %l:%c\ \  
endfunction

function statusline#off()
	" set statusline
	" leftside
	setlocal statusline=%#Off#\ [%n]
	setlocal statusline+=\ \ \ \ %{b:currentbranch}
	setlocal statusline+=\ \ \ %t\ %m%r

	" rightside
	setlocal statusline+=%=\ %{&ft}
	setlocal statusline+=\ \ %{b:filestyle}
	setlocal statusline+=\ \ \ \ %P\ \ %l:%c\ \  
endfunction
