vim.cmd([[
  command! -nargs=? CPFT let g:copilot_filetypes = { (empty(<q-args>) ? &filetype : <q-args>) : v:true }
]])
