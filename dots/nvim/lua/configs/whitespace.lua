vim.cmd([[
highlight link TrailingSpaces Error
autocmd BufEnter * if &ft != 'help' | match TrailingSpaces /\s\+$/ | endif
autocmd BufEnter * if &ft == 'help' | match none /\s\+$/ | endif
autocmd BufEnter * if &modifiable | match TrailingSpaces /\s\+$/ | endif
]])
