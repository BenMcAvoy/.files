-- Set the leader
vim.g.mapleader = " "

-- Set a binding to go back to NetRW
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Clear search highlight on escape
vim.keymap.set("n", "<Esc>", vim.cmd.nohl)

-- Focus Nvim Tree
vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeFocus)

-- Focus Nvim Tree
vim.keymap.set("n", "<leader>gg", vim.cmd.LazyGit)
