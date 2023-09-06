local function theme(colour)
	colour = colour or "catppuccin-frappe"

	vim.cmd.colorscheme(colour)
end

theme()
