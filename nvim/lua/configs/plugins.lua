local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  "navarasu/onedark.nvim",

  {
    "kdheepak/lazygit.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },

  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    lazy = false,
  },

  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 1000
    end,
  },

  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },

  {
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},

    --- Package management in NeoVim
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    -- LSP Support
    {
      'neovim/nvim-lspconfig',
      dependencies = {
        {'hrsh7th/cmp-nvim-lsp'},
      },
    },

    -- Autocompletion
    {
      'hrsh7th/nvim-cmp',
      dependencies = {
        {'L3MON4D3/LuaSnip'},
      }
    }
  },

  { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', lazy = false},

  "onsails/lspkind.nvim",

  "folke/todo-comments.nvim",

  "tpope/vim-commentary",

  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {} -- this is equalent to setup({}) function
  },

  {
    'nvim-telescope/telescope.nvim', tag = '0.1.3',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },

  {
    "NvChad/nvterm",
    config = function ()
      require("nvterm").setup()
    end
  },

  "lewis6991/gitsigns.nvim",

  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
})
