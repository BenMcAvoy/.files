vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

vim.opt.signcolumn = "yes"

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

vim.keymap.set('n', '<leader>et', vim.cmd("NvimTreeToggle<cr>"), { desc = "Open file tree" })

require('telescope').setup { defaults = { file_ignore_patterns = { "megasource" } } }

-- yank/paste to system clipboard
vim.opt.clipboard = "unnamedplus"
