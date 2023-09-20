-- Set the leader
vim.g.mapleader = ' '

-- Clear search highlight on escape
vim.keymap.set("n", "<Esc>", vim.cmd.nohl)

-- Focus Nvim Tree
vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeFocus)
