local lsp_zero = require('lsp-zero').preset("minimal")

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {"rust_analyzer", "lua_ls"},
  handlers = {
    lsp_zero.default_setup,
  },
})

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },

  formatting = {
    fields = {'abbr', 'kind', 'menu'},
    format = require('lspkind').cmp_format({
      -- mode = 'symbol',
      maxwidth = 50,
      ellipsis_char = '...',
    })
  },

  mapping = {
    ['<Tab>'] = cmp_action.luasnip_supertab(),
    ['<S-Tab>'] = cmp_action.luasnip_shift_supertab(),
    ['<CR>'] = cmp.mapping.confirm({select = false}),
  },

  preselect = 'item',
  completion = {
    completeopt = 'menu,menuone,noinsert'
  },
})
