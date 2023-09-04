-- Use the tokyonight theme
require('lualine').setup {
  options = {
    theme = 'auto'
  },
  sections = {
      lualine_c = {
          'lsp_progress'
      }
  }
}
