-- Use the tokyonight theme
require('lualine').setup {
  options = {
    theme = 'tokyonight'
  },
  sections = {
      lualine_c = {
          'lsp_progress'
      }
  }
}
