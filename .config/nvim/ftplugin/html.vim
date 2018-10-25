augroup EXCLUDING_MARKDOWN
    autocmd Filetype html setlocal shiftwidth=2
    autocmd Filetype html setlocal softtabstop=2
    autocmd Filetype html setlocal textwidth=0
augroup END

setlocal mps+=<:>
let g:neomake_html_enabled_makers = []
