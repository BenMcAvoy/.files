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
