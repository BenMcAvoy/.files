-- Set the leader
vim.g.mapleader = ' '

-- Clear search highlight on escape
vim.keymap.set("n", "<Esc>", vim.cmd.nohl)

-- Focus Nvim Tree
vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeFocus)

local wk = require("which-key")

wk.register({
  g = {
    name = "git",
    g = { "<cmd>LazyGit<cr>", "Open LazyGit" },
  },
}, { prefix = "<leader>" })
