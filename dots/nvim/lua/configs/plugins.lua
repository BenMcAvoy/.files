return {
	-- Sensible defaults
	"tpope/vim-sensible",

	-- Keybind management
	"folke/which-key.nvim",

	-- Markdown editing
	"mzlogin/vim-markdown-toc",
	"ixru/nvim-markdown",
	"godlygeek/tabular",

	-- Theme
	"ellisonleao/gruvbox.nvim",

	-- Git client
	"brneor/gitui.nvim",

	-- Terminal
	{ "NvChad/nvterm", opts = {} },

	-- LSP status
	{"j-hui/fidget.nvim", opts = {}},

	-- AI code suggestions
	"github/copilot.vim",

	-- Code tracking
	{ "wakatime/vim-wakatime", lazy = false },

	-- Fuzzy finding
	{
		"nvim-telescope/telescope.nvim", tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" }
	},

	-- Netrw replacement
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
	},

	-- Rust extras (e.g. inlay hints)
	"simrat39/rust-tools.nvim",

	-- Error management
	{
		"chikko80/error-lens.nvim",
		event = "BufRead",
		dependencies = {
			"nvim-telescope/telescope.nvim"
		},
	},

	-- LSP management
	{
		-- LSP configuration
		"neovim/nvim-lspconfig",

		-- LSP setup
		{"VonHeikemen/lsp-zero.nvim", branch = "v3.x"},

		-- LSP and other tool management
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",

		-- LSP configuration
		{
			"neovim/nvim-lspconfig",
			dependencies = {
				{"hrsh7th/cmp-nvim-lsp"},
			},
		},

		{
			'windwp/nvim-autopairs',
			event = "InsertEnter",
			opts = {}
		},

		-- Autocompletion menu
		{
			"hrsh7th/nvim-cmp",
			dependencies = {
				{
					"L3MON4D3/LuaSnip",
					"onsails/lspkind.nvim"
				},
			}
		}
	},

	-- Status bar
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {},
	},

	-- Better syntax highlighting
	{ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate", lazy = false},

	-- Comment management
	{ "folke/todo-comments.nvim", opts = {} },
	"tpope/vim-commentary",

	-- Git status in gutter
	{ "lewis6991/gitsigns.nvim", opts = {} },

	-- Configuration for vim files
	{ "folke/neodev.nvim", opts = {} },
}
