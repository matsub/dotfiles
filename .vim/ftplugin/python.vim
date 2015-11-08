setlocal shiftwidth=4
setlocal softtabstop=4
setlocal noautoindent
setlocal nosmartindent
setlocal cc=+1
setlocal wrap
setlocal foldminlines=6
setlocal foldnestmax=3

setlocal tags+=python.tags

" abbreviate
" abbreviate utils
function! PyFrom()
	let s:name = input("module name: ")
	return "from ".s:name." import "
endfunction

function! PyClass()
	let s:name = input("class name: ")
	return "class ".s:name.":"
endfunction

function! PyMethod()
	let s:name = input("method name: ")
	return "def ".s:name."(self):"
endfunction

function! PyClassMethod()
	let s:name = input("method name: ")
	return "@classmethod\ndef "
				\ . s:name . "(cls):"
endfunction

function! PyLogging()
	return "logger = logging.getLogger(__name__)\n"
				\ . "logger.setLevel(logging.INFO)\n"
				\ . "\n"
				\ . "handler = logging.StreamHandler()\n"
				\ . "handler.setLevel(logging.INFO)\n"
				\ . "\n"
				\ . "logger.addHandler(handler)\n"
endfunction

" call abreviate
inoremap <expr> <C-L>from PyFrom()
inoremap <expr> <C-L>class PyClass()
inoremap <expr> <C-L>method PyMethod()
inoremap <expr> <C-L>clasm PyClassMethod()
inoremap <expr> <C-L>log PyLogging()
