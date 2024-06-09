-- Sensible defaults --
vim.cmd("runtime! macros/matchit.vim")
vim.opt.backspace = "indent,eol,start"
vim.opt.incsearch = true
vim.opt.listchars = "tab:»·,trail:·,nbsp:·"
vim.opt.scroll = 3
vim.opt.autoread = true

--- Line number settings ---
vim.opt.relativenumber = true
vim.opt.number = true

--- Indentation settings ---
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2

-- Miscellaneous settings ---
vim.opt.smartindent = true
vim.opt.wrap = false

vim.g.loaded_netrwPlugin = 1
--vim.g.loaded_netrw = 1

--- History settings ---
vim.opt.undodir = vim.fn.expand("~/.vim/undodir")
vim.opt.undofile = true
vim.opt.swapfile = false

--- Search settings ---
vim.opt.incsearch = true
vim.opt.hlsearch = true

--- Desktop integration ---
vim.o.guifont = "JetBrainsMono Nerd Font Mono:h12"
vim.opt.clipboard = "unnamedplus"
vim.opt.termguicolors = true

-- Line colour --
vim.opt.cursorline = true

-- Spellcheck and line wrapping for text files --
vim.cmd([[
augroup MarkupFiles
autocmd!
autocmd FileType markdown,txt,tex,type setlocal spelllang=en_gb,es
autocmd FileType markdown,txt,tex,typ setlocal spell wrap linebreak
augroup END
]])

