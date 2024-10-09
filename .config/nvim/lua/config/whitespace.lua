-- Create an autocommand group to avoid duplicates
local augroup = vim.api.nvim_create_augroup('TrimWhitespace', { clear = true })

-- Define the autocommand to trim trailing whitespace
vim.api.nvim_create_autocmd('BufWritePre', {
  group = augroup,
  pattern = '*',
  callback = function()
    local curpos = vim.api.nvim_win_get_cursor(0)
    vim.cmd('keeppatterns %s/\\s\\+$//e')

    -- Restore the cursor position
    vim.api.nvim_win_set_cursor(0, curpos)
  end,
})
