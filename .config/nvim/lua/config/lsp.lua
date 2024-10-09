local lsp_zero = require('lsp-zero')

-- lsp_attach is where you enable features that only work
-- if there is a language server active in the file
local lsp_attach = function(_, bufnr)
	local opts = { buffer = bufnr }

	vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
	vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
	vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
	vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
	vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
	vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
	vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
	vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
	vim.keymap.set({ 'n', 'x' }, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
	vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
end

lsp_zero.extend_lspconfig({
	sign_text = true,
	lsp_attach = lsp_attach,
	capabilities = require('cmp_nvim_lsp').default_capabilities(),
})

local cmp = require('cmp')

cmp.setup({
	sources = {
		{ name = 'nvim_lsp' },
	},

	snippet = {
		expand = function(args)
			-- You need Neovim v0.10 to use vim.snippet
			vim.snippet.expand(args.body)
		end,
	},

	-- mapping = cmp.mapping.preset.insert({}),
	mapping = cmp.mapping.preset.insert({
		-- ctrl + CR = confirm completion
		['<C-CR>'] = cmp.mapping.confirm({ select = true }),

	}),

	preselect = 'item',
	completion = {
		completeopt = 'menu,menuone,noinsert'
	},

	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
})

require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = { 'lua_ls', 'rust_analyzer' },
	automatic_installation = true,
	handlers = {
		function(server_name)
			require('lspconfig')[server_name].setup({})
		end,
	},
})

local ts_config = require('nvim-treesitter.configs')

ts_config.setup({
	ensure_installed = { 'c', 'cpp', 'lua', 'vim', 'vimdoc', 'javascript' },
	highlight = { enable = true },
	indent = { enable = true },
	auto_install = true
})

require('inlay-hint').setup({
	virt_text_pos = 'inline'
})

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local bufnr = args.buf ---@type number
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client.supports_method('textDocument/inlayHint') then
      vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
      vim.keymap.set('n', '<leader>i', function()
        vim.lsp.inlay_hint.enable(
          not vim.lsp.inlay_hint.is_enabled({ bufnr = bufnr }),
          { bufnr = bufnr }
        )
      end, { buffer = bufnr })
    end
  end,
})
