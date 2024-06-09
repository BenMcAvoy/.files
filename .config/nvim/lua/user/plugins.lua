return {
	-- Colour scheme
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },

	-- File tree
	"nvim-tree/nvim-tree.lua",

	-- AI integration --
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
		config = function()
			require("copilot").setup({
				filetypes = {
					markdown = true,
					text = true,
				},
			})
		end,
	},

	{ 'wakatime/vim-wakatime', lazy = false },

	-- Debugging --
	"mfussenegger/nvim-dap",
	"rcarriga/nvim-dap-ui",
	{ "rcarriga/nvim-dap-ui", dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"} },

	-- Git integration --
	"lewis6991/gitsigns.nvim",
	"kdheepak/lazygit.nvim",

	-- Commenting support
	{ "folke/todo-comments.nvim", opts = {} },
	"tpope/vim-commentary",

	-- Find --
	{
		"nvim-telescope/telescope.nvim", tag = "0.1.6",
		dependencies = { "nvim-lua/plenary.nvim" }
	},

	-- UI messaging replacement --
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		}
	},

	-- LSP Support
	"neovim/nvim-lspconfig",
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",

	-- Renaming
	"smjonas/inc-rename.nvim",

	-- Autocompletion
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"saadparwaiz1/cmp_luasnip",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-nvim-lua",

	-- Snippets
	"L3MON4D3/LuaSnip",
	"rafamadriz/friendly-snippets",

	-- LSP Configuration
	"VonHeikemen/lsp-zero.nvim",

	-- LSP menu --
	"onsails/lspkind.nvim",

	-- Package management --
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",

	-- Treesitter --
	{ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" },

	{
		"zbirenbaum/copilot-cmp",
		config = function ()
			require("copilot_cmp").setup()
		end
	},

	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup()
		end
	},

	{
		"goolord/alpha-nvim",
		config = function ()
			require"alpha".setup(require"alpha.themes.dashboard".config)
		end
	},

	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" }
	},

	{ "AndreM222/copilot-lualine" },

	-- Terminal --
	{ "akinsho/toggleterm.nvim", config = true },

	-- Markdown support --
	"mzlogin/vim-markdown-toc",
	"ixru/nvim-markdown",
	"godlygeek/tabular",

	-- Lua Configuration --
	{ "folke/neodev.nvim", opts = {} }
}
