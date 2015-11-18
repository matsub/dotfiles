setlocal shiftwidth=2
setlocal softtabstop=2

setlocal mps+=$:$
setlocal tags+=tex.tags

" abbreviate
" abbreviate utils
function! TeXFigure()
	return "\\begin{figure}[H]\n"
				\ . "\\centering\n"
				\ . "\\includegraphics[height=6cm]{images/<++>}\n"
				\ . "\\caption{<++>\n"
				\ . "\\label{fig:<++>}\n"
				\ . "}\n"
				\ . "\\end{figure}"
endfunction

function! TeXTable()
	return "\\begin{table}[H]\n"
				\ . "\\caption{<++>}\n"
				\ . "\\label{tb:<++>}\n"
				\ . "\\centering\n"
				\ . "\\end{table}"
endfunction

" call abreviate
inoremap <expr> <C-L>fig TeXFigure()
inoremap <expr> <C-L>table TeXTable()
