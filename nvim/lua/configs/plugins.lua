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
  "github/copilot.vim",

  "navarasu/onedark.nvim",

  { "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...},

  {
    'nvim-orgmode/orgmode',

    dependencies = {
      { 'nvim-treesitter/nvim-treesitter', lazy = true },
    },

    event = 'VeryLazy',
    config = function()
      -- Load treesitter grammar for org
      require('orgmode').setup_ts_grammar()

      -- Setup treesitter
      require('nvim-treesitter.configs').setup({
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = { 'org' },
        },
        ensure_installed = { 'org' },
      })

      -- Setup orgmode
      require('orgmode').setup({
        org_agenda_files = '~/orgfiles/**/*',
        org_default_notes_file = '~/orgfiles/refile.org',
      })
    end,
  },

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

  'neovim/nvim-lspconfig',
  'simrat39/rust-tools.nvim',
  "rcarriga/nvim-dap-ui",

  'mfussenegger/nvim-dap',

  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 1000
    end,
  },

  {
    "chikko80/error-lens.nvim",
    event = "BufRead",
    dependencies = {
      "nvim-telescope/telescope.nvim"
    },
    opts = {
      -- this setting tries to auto adjust the colors
      -- based on the diagnostic-highlight groups and your
      -- theme background color with a color blender
      enabled = true,
      auto_adjust = {
        enable = false,
        fallback_bg_color = nil, -- mandatory if enable true (e.g. #281478)
        step = 7, -- inc: colors should be brighter/darker
        total = 30 -- steps of blender
      },
      prefix = 4, -- distance code <-> diagnostic message
      -- default colors
      colors = {
        error_fg = "#FF6363", -- diagnostic font color
        error_bg = "#4B252C", -- diagnostic line color
        warn_fg = "#FA973A",
        warn_bg = "#403733",
        info_fg = "#5B38E8",
        info_bg = "#281478",
        hint_fg = "#25E64B",
        hint_bg = "#147828"
      }
    }
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

  -- Time tracking
  'wakatime/vim-wakatime',

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

  "ntpeters/vim-better-whitespace",
})
