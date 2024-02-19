-- -- Define the highlight group for leading spaces
-- vim.cmd('highlight link TrailingSpaces Error')

-- -- Highlight trailing whitespace.
-- vim.cmd([[
-- augroup TrailingSpaceHighlight
--   autocmd!
--   autocmd VimEnter,WinEnter * if &modifiable | match TrailingSpaces /\s\+$/ | endif
-- augroup END
-- ]])

vim.cmd([[
highlight link TrailingSpaces Error
autocmd BufEnter * if &ft != 'help' | match TrailingSpaces /\s\+$/ | endif
autocmd BufEnter * if &ft == 'help' | match none /\s\+$/ | endif
]])
