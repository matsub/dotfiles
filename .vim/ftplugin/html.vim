setlocal textwidth=0

augroup EXCLUDING_MARKDOWN
    autocmd Filetype html setlocal textwidth=0
augroup END

setlocal mps+=<:>
let g:neomake_html_enabled_makers = []
