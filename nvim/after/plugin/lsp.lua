local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.on_attach(function(_, bufnr)
	lsp.default_keymaps({buffer = bufnr})
end)

-- Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

-- Setup keybindings
local cmp_action = lsp.cmp_action()
local cmp = require('cmp')

cmp.setup({
	mapping = {
		['<Tab>'] = cmp_action.luasnip_supertab(),
		['<S-Tab>'] = cmp_action.luasnip_shift_supertab(),
		['<CR>'] = cmp.mapping.confirm({select = false}),
	},

	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},

	preselect = 'item',

	completion = {
		completeopt = 'menu,menuone,noinsert'
	},
})

local lspconfig = require('lspconfig')

local servers = {
  'lua_ls',
  'rust_analyzer',
}

for _, server in ipairs(servers) do
  lspconfig[server].setup({})
end
