-- Set the leader
vim.g.mapleader = ' '

-- Clear search highlight on escape
vim.keymap.set("n", "<Esc>", vim.cmd.nohl)

local wk = require("which-key")

wk.register({
  g = {
    name = "git",

    g = { "<cmd>LazyGit<cr>", "Open LazyGit" },
  },

  f = {
    name = "find",

    f = { "<cmd>Telescope find_files<cr>", "Find File" },
    g = { "<cmd>Telescope live_grep<cr>", "Live grep" },
    r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
  },

  e = { "<cmd>NvimTreeFocus<cr>", "Focus Nvim Tree" },

  t = {
    name = "terminal",

    f = { function () require("nvterm.terminal").toggle "float" end, "Floating terminal"},
    v = { function () require("nvterm.terminal").toggle "vertical" end, "Vertical terminal"},
    h = { function () require("nvterm.terminal").toggle "horizontal" end, "Horizontal terminal"},
    t = { "<cmd>TroubleToggle<cr>", "Toggle trouble" },
  }
}, { prefix = "<leader>" })
