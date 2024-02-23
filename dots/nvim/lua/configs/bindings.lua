-- Disable binding to completion keys.
vim.cmd([[autocmd FileType markdown silent! iunmap <buffer> <Tab>]])

-- Clear search highlight on escape
vim.keymap.set("n", "<Esc>", vim.cmd.nohl)

local wk = require("which-key")

wk.register({
	g = {
		name = "git",

		g = { "<cmd>GitUi<cr>", "Open GitUI" },
	},

	f = {
		name = "find",

		f = { "<cmd>Telescope find_files<cr>", "Find File" },
		g = { "<cmd>Telescope live_grep<cr>", "Live grep" },
		r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
		b = { "<cmd>Telescope buffers<cr>", "Open buffers" },
	},

	e = { "<cmd>NvimTreeFocus<cr>", "Focus Nvim Tree" },
	x = { "<cmd>BufferClose<cr>", "Close buffer" },

	t = {
		name = "terminal",

		f = { function () require("nvterm.terminal").toggle "float" end, "Floating terminal"},
		v = { function () require("nvterm.terminal").toggle "vertical" end, "Vertical terminal"},
		h = { function () require("nvterm.terminal").toggle "horizontal" end, "Horizontal terminal"},
		t = { "<cmd>TroubleToggle<cr>", "Toggle trouble" },
		d = { "<cmd>TodoTelescope<cr>", "Toggle todo telescope (T-D, to-do)" },
	},

	b = {
		name = "Buffers",
		[","] = {"<Cmd>BufferPrevious<CR>", "Previous Buffer"},
		["."] = {"<Cmd>BufferNext<CR>", "Next Buffer"},
		["<"] = {"<Cmd>BufferMovePrevious<CR>", "Move Buffer Previous"},
		[">"] = {"<Cmd>BufferMoveNext<CR>", "Move Buffer Next"},
		["1"] = {"<Cmd>BufferGoto   1<CR>", "Goto Buffer   1"},
		["2"] = {"<Cmd>BufferGoto   2<CR>", "Goto Buffer   2"},
		["3"] = {"<Cmd>BufferGoto   3<CR>", "Goto Buffer   3"},
		["4"] = {"<Cmd>BufferGoto   4<CR>", "Goto Buffer   4"},
		["5"] = {"<Cmd>BufferGoto   5<CR>", "Goto Buffer   5"},
		["6"] = {"<Cmd>BufferGoto   6<CR>", "Goto Buffer   6"},
		["7"] = {"<Cmd>BufferGoto   7<CR>", "Goto Buffer   7"},
		["8"] = {"<Cmd>BufferGoto   8<CR>", "Goto Buffer   8"},
		["9"] = {"<Cmd>BufferGoto   9<CR>", "Goto Buffer   9"},
		["0"] = {"<Cmd>BufferLast<CR>", "Last Buffer"},
		["p"] = {"<Cmd>BufferPin<CR>", "Pin/Unpin Buffer"},
		["c"] = {"<Cmd>BufferClose<CR>", "Close Buffer"},
	},

	o = {
		name = "Ordering",
		["bb"] = {"<Cmd>BufferOrderByBufferNumber<CR>", "Order by Buffer Number"},
		["bd"] = {"<Cmd>BufferOrderByDirectory<CR>", "Order by Directory"},
		["bl"] = {"<Cmd>BufferOrderByLanguage<CR>", "Order by Language"},
		["bw"] = {"<Cmd>BufferOrderByWindowNumber<CR>", "Order by Window Number"},
	},
	m = { "<Cmd>BufferPick<CR>", "Magic Buffer-picking Mode" },
}, { prefix = "<leader>" })
