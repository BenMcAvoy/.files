-- sensible.vim rewrote into Lua
-- Original: Tim Pope <http://tpo.pe/>
-- Version: 2.0 (Rewrote into Lua)

if vim.g.loaded_sensible then
  return
end
vim.g.loaded_sensible = true

-- Disable vi compatibility
vim.opt.compatible = false

-- Set backspace behavior
vim.opt.backspace = 'indent,eol,start'

-- Disable keyword completion in included files
vim.opt.complete:remove('i')

-- Smart tabs
vim.opt.smarttab = true

-- Disable octal number format recognition
vim.opt.nrformats:remove('octal')

-- Reduce escape key timeout for more responsive input
vim.opt.ttimeoutlen = 100

-- Enable incremental search
vim.opt.incsearch = true

-- Map CTRL-L to clear search highlighting and update diff
vim.api.nvim_set_keymap('n', '<C-L>', ':nohlsearch<Bar>diffupdate<CR><C-L>', { silent = true })

-- Set statusline, ruler, and wildmenu
vim.opt.laststatus = 2
vim.opt.ruler = true
vim.opt.wildmenu = true

-- Configure scrolling behavior
vim.opt.scrolloff = 1
vim.opt.sidescroll = 1
vim.opt.sidescrolloff = 2

-- Display configuration
vim.opt.display:append('lastline')
vim.opt.display:append('truncate')

-- List character configurations
vim.opt.listchars = { tab = '> ', trail = '-', extends = '>', precedes = '<', nbsp = '+' }

-- Delete comment characters when joining lines
vim.opt.formatoptions:append('j')

-- Set tags search paths
vim.opt.tags:remove('./tags')
vim.opt.tags:prepend('./tags')

-- Automatically reload files changed outside of Vim
vim.opt.autoread = true

-- Increase command history limit
vim.opt.history = 1000

-- Maximum number of tab pages
vim.opt.tabpagemax = 50

-- Persist UPPERCASE variables in .viminfo
vim.opt.viminfo:append('!')

-- Disable session and view options saving
vim.opt.sessionoptions:remove('options')
vim.opt.viewoptions:remove('options')

-- Use bash instead of fish shell if needed
if vim.opt.shell:get():match('fish$') then
  vim.opt.shell = '/usr/bin/env bash'
end

-- Disable legacy behavior that breaks plugin mappings
vim.opt.langremap = false

-- Enable filetype detection, plugins, and indentation
vim.cmd('filetype plugin indent on')

-- Enable syntax highlighting
vim.cmd('syntax enable')

-- Map Ctrl-U and Ctrl-W to undo break in insert mode
vim.api.nvim_set_keymap('i', '<C-U>', '<C-G>u<C-U>', { silent = true })
vim.api.nvim_set_keymap('i', '<C-W>', '<C-G>u<C-W>', { silent = true })

-- Create DiffOrig command
vim.api.nvim_create_user_command('DiffOrig', function()
  vim.cmd('vert new | set bt=nofile | r ++edit # | 0d_ | diffthis | wincmd p | diffthis')
end, {})

-- Load matchit plugin
vim.cmd('runtime! macros/matchit.vim')

-- Enable :Man command
vim.cmd('runtime ftplugin/man.vim')

