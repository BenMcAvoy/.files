local function theme(colour)
	colour = colour or "doom-one"

	vim.cmd.colorscheme(colour)
end

theme()
