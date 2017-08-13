setlocal noexpandtab
setlocal tabstop=2
setlocal shiftwidth=2
setlocal softtabstop=2

" abbreviate
" abbreviate utils
function! GNUMakeDependencies()
	return "%.d: %.c\n"
				\ . "$(CC) -M $(CFLAGS) $< > $@.$$$$\n"
				\ . "sed 's,\\($*\\)\\.o[ :]*,\\1.o $@ : ,g'"
				\ . " < $@.$$$$ > $@\n"
				\ . "$(RM) $@.$$$$"
endfunction

" call abreviate
inoremap <expr> <C-L>dep GNUMakeDependencies()
