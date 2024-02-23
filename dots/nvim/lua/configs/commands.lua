vim.api.nvim_create_user_command('CPT', function(args)
  local filetype = args[1] or vim.bo.filetype
  local enabled = vim.g.copilot_filetypes[filetype]
  vim.g.copilot_filetypes = {[filetype] = not enabled}

  local message = enabled and 'Disabling' or 'Enabling'
  print(message .. ' Copilot for ' .. filetype)
end, {nargs = '?', complete = 'filetype', desc = 'Toggle Copilot for a specific filetype'})

