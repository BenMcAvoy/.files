return {
	"amarakon/vim-sensible",
	"nvim-telescope/telescope.nvim",

	{ "nvim-tree/nvim-web-devicons", opts = {} },
	{ "nvim-tree/nvim-tree.lua",     opts = {} },

	{
		"kdheepak/lazygit.nvim",
		lazy = true,
		cmd = {
			"LazyGit",
			"LazyGitConfig",
			"LazyGitCurrentFile",
			"LazyGitFilter",
			"LazyGitFilterCurrentFile",
		},
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		keys = {
			{ "<leader>gg", "<cmd>LazyGit<cr>", desc = "LazyGit" }
		}
	}
}
