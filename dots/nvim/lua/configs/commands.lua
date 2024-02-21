vim.cmd([[
  command! -nargs=? CPFT let g:copilot_filetypes = { (empty(<q-args>) ? 'markdown' : <q-args>) : v:true }
]])
