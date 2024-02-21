--- LSP setup ---
local lsp_zero = require('lsp-zero').preset("minimal")

lsp_zero.on_attach(function(_, bufnr)
	lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})

require('mason-lspconfig').setup({
	ensure_installed = {"rust_analyzer", "lua_ls", "gopls"},
	handlers = {
		lsp_zero.default_setup,
	},
})

--- Completions menu setup ---
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()
local cmp_autopairs = require('nvim-autopairs.completion.cmp')

cmp.setup({
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},

	sources = {
		{ name = 'nvim_lsp' },
		{ name = 'buffer' },
		{ name = 'path' },
	},

	formatting = {
		fields = {'abbr', 'kind', 'menu'},
		format = require('lspkind').cmp_format({
			mode = 'symbol',
			maxwidth = 50,
			ellipsis_char = '...',
		}),

		expandable_indicator = true,
	},

	mapping = {
		['<Ctrl-Space>']  = cmp_action.luasnip_supertab(),
		['<S-Tab>'] = cmp_action.luasnip_shift_supertab(),
		['<CR>'] = cmp.mapping.confirm({select = false}),
	},

	preselect = 'item',

	completion = {
		completeopt = 'menu,menuone,noinsert'
	},
})

cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())

--- Language specific setup ---
require("rust-tools").setup({
	tools = {
		inlay_hints = {
			auto = true,
			only_current_line = false,
			show_parameter_hints = true,
			parameter_hints_prefix = "<- ",
			other_hints_prefix = "=> ",
			max_len_align = false,
			max_len_align_padding = 1,
			right_align = false,
			right_align_padding = 7,
			highlight = "Comment",
		}
	},

	server = {
		on_attach = function(_, _)
			require("dap")
			require("dapui")
		end,

		flags = {
			debounce_text_changes = 150,
		},

		settings = {
			["rust-analyzer"] = {
				checkOnSave = {
					enable = true,
					command = "clippy",
				},

				cargo = {
					allFeatures = true,
				},

				diagnostics = {
					disabled = { "inactive-code" },
				},
			},
		},
	},
})
