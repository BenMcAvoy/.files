return {
	"neovim/nvim-lspconfig",
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-nvim-lsp",
	"mason-lspconfig.nvim",
	"williamboman/mason-lspconfig.nvim",
	"williamboman/mason.nvim",
	"mfussenegger/nvim-dap",
	"rcarriga/nvim-dap-ui",
	"mfussenegger/nvim-dap",
	"rcarriga/nvim-dap-ui",
	"VonHeikemen/lsp-zero.nvim",

	"hrsh7th/cmp-path",
	"onsails/lspkind.nvim",

	{ "supermaven-inc/supermaven-nvim", opts = {} },

	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {},
	},

	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {}
	},

	{ "lewis6991/gitsigns.nvim",        opts = {} },

	{
		"rose-pine/neovim",
		name = "rose-pine",
		opts = {},
		config = function()
			vim.cmd("colo rose-pine")
		end
	},

	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

	{
		"folke/trouble.nvim",
		opts = {}, -- for default options, refer to the configuration section for custom setup.
		cmd = "Trouble",
		keys = {
			{
				"<leader>tt",
				"<cmd>Trouble diagnostics<cr>",
				desc = "Diagnostics (Trouble)",
			},
			{
				"<leader>td",
				"<cmd>Trouble todo<cr>",
				desc = "Todo List (Trouble)",
			},
			{
				"<leader>ts",
				"<cmd>Trouble symbols<cr>",
				desc = "Workspace Symbols (Trouble)",
			},
		},
	},

	"wakatime/vim-wakatime",

	{
		'windwp/nvim-autopairs',
		event = "InsertEnter",
		config = true
	}
}
