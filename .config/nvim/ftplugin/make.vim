setlocal noexpandtab
setlocal tabstop=4
setlocal shiftwidth=4
setlocal softtabstop=4

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
