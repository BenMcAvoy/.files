return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
			"3rd/image.nvim",
		},

		keys = {
			{ "<leader>et", "<cmd>Neotree<cr>",         desc = "NeoTree" },
			{ "<leader>eb", "<cmd>Neotree buffers<cr>", desc = "NeoTree buffers" },
		},

		lazy = false,
	},

	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = function()
			vim.cmd('colorscheme gruvbox')
		end
	},

	{
		's1n7ax/nvim-window-picker',
		name = 'window-picker',
		event = 'VeryLazy',
		version = '2.*',
		config = function()
			require 'window-picker'.setup()
		end,
	},

	{
		'windwp/nvim-autopairs',
		event = "InsertEnter",
		config = true
	},

	-- Git signs
	{ 'lewis6991/gitsigns.nvim', event = 'BufReadPre', opts = {} }
}
