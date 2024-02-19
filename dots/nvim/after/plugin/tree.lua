-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Load default configuration
require("nvim-tree").setup({})

require("nvim-tree").setup({
	sort = {
		sorter = "case_sensitive",
	},

	view = {
		width = 30,
	},

	filters = {
		dotfiles = false,
	},

	git = {
		enable = true,
		ignore = false,
		timeout =  400,
	},
})
