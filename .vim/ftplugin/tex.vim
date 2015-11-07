setlocal shiftwidth=2
setlocal softtabstop=2
setlocal autoindent
setlocal wrap

setlocal tags+=tex.tags

" abbreviate
" abbreviate utils
function! TeXFigure()
	let s:caption = input("caption: ")
	let s:src = input("src: ")
	let s:label = input("label: ")
	return "\\begin{figure}[H]\n"
				\ . "\\centering"
				\ . "\\includegraphics[height=6cm]{images/" . s:src . "}\n"
				\ . "\\caption{" . s:caption . "\n"
				\ . "\\label{" . s:label . ":figure}\n"
				\ . "}\n"
				\ . "\\end{figure}"
endfunction

function! TeXTable()
	let s:caption = input("caption: ")
	let s:src = input("src: ")
	let s:label = input("label: ")
	return "\\begin{figure}[H]\n"
				\ . "\\centering"
				\ . "\\caption{" . s:caption . "\n"
				\ . "\\label{" . s:label . ":table}\n"
				\ . "}\n"
				\ . "\\end{figure}"
endfunction

" call abreviate
inoremap <expr> <C-L>figure TeXFigure()
inoremap <expr> <C-L>table TeXTable()
