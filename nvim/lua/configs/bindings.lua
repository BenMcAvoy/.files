-- Set the leader
vim.g.mapleader = " "

-- Set a binding to go back to NetRW
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Clear search highlight on escape
vim.keymap.set("n", "<Esc>", vim.cmd.nohl)
