require("nvim-tree").setup({
	sort = {
		sorter = "case_sensitive",
	},

	view = {
		width = 30,
	},

	renderer = {
		highlight_git = true, -- highlight git status for files
		group_empty = true, -- group empty folders into one node
	},

	filters = {
		dotfiles = false,
		git_ignored = false,
	},
})

vim.api.nvim_create_autocmd("BufEnter", {
  nested = true,
  callback = function()
    if #vim.api.nvim_list_wins() == 1 and require("nvim-tree.utils").is_nvim_tree_buf() then
      vim.cmd "quit"
    end
  end
})
