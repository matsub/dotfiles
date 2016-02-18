setlocal shiftwidth=2
setlocal softtabstop=2

setlocal mps+=$:$
setlocal tags+=tex.tags

setlocal makeprg=ptex2pdf\ -l\ %
nnoremap <C-Down> :make<CR><CR><CR>

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

function! TeXLst()
	return "\\lstinputlisting[\n"
				\ . "numbers=none,\n"
				\ . "caption=<++>,\n"
				\ . "label=lst:<++>\n"
				\ . "]{data/<++>}"
endfunction

function! TeXList()
	return "\\begin{lstlisting}[\n"
				\ . "numbers=none,\n"
				\ . "caption=<++>,\n"
				\ . "label=lst:<++>\n"
				\ . "]\n"
				\ . "$ <++>\n"
				\ . "\\end{lstlisting}"
endfunction

" call abreviate
inoremap <expr> <C-L>fig TeXFigure()
inoremap <expr> <C-L>table TeXTable()
inoremap <expr> <C-L>lst TeXLst()
inoremap <expr> <C-L>list TeXList()
