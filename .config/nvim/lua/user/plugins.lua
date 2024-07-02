return {
	-- Colour scheme --
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },

	-- File tree --
	"nvim-tree/nvim-tree.lua",

	-- LSP Support --
	"neovim/nvim-lspconfig",
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",

	-- Bacon integration --
	"Canop/nvim-bacon",

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

	-- AI status in bar --
	{ "andrem222/copilot-lualine" },

	-- AI in completion menu --
	{
		"zbirenbaum/copilot-cmp",
		config = function ()
			require("copilot_cmp").setup()
		end
	},

	-- Terminal --
	{ "NvChad/nvterm", opts = {} },

	-- Time tracking --
	{ 'wakatime/vim-wakatime', lazy = false },

	-- Git integration --
	"lewis6991/gitsigns.nvim",
	"kdheepak/lazygit.nvim",

	-- Commenting support --
	{ "folke/todo-comments.nvim", opts = {} },
	"tpope/vim-commentary",

	-- Find --
	{
		"nvim-telescope/telescope.nvim", tag = "0.1.6",
		dependencies = { "nvim-lua/plenary.nvim" }
	},

	-- Renaming --
	"smjonas/inc-rename.nvim",

	-- Autocompletion --
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"saadparwaiz1/cmp_luasnip",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-nvim-lua",

	-- Snippets --
	"l3mon4d3/luasnip",
	"rafamadriz/friendly-snippets",

	-- LSP configuration --
	"vonheikemen/lsp-zero.nvim",

	-- LSP menu --
	"onsails/lspkind.nvim",

	-- Package management --
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",

	-- Treesitter --
	{ "nvim-treesitter/nvim-treesitter", run = ":tsupdate" },

	-- Automatic pairs --
	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup()
		end
	},

	-- Startup screen --
	{
		"goolord/alpha-nvim",
		config = function ()
			require"alpha".setup(require"alpha.themes.dashboard".config)
		end
	},

	-- Bar --
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" }
	},

	-- Lua vim global support --
	{ "folke/neodev.nvim", opts = {} },

	-- Markdown support --
	"ixru/nvim-markdown",
	"godlygeek/tabular"
}
