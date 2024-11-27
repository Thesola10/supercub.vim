" Vim filetype plugin file
" Language:     Super Cub
" Maintainer:   Karim Vergnes <me@thesola.io>

augroup vim-supercub-filetype
    autocmd!
    au BufRead,BufNewFile *.cub set filetype=c.supercub
augroup END
