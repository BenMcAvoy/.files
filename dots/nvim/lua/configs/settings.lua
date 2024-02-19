--- Colour scheme settings ---
vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

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

--- History settings ---
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.swapfile = false

--- Search settings ---
vim.opt.incsearch = true
vim.opt.hlsearch = true

--- Desktop integration ---
vim.o.guifont = "JetBrainsMono Nerd Font Mono:h12"
vim.opt.clipboard = "unnamedplus"
vim.opt.termguicolors = true
