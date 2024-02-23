require('lualine').setup {
  options = {
    theme = "gruvbox",
    component_separators = ':',
    section_separators = { left = '', right = '' },
  },

  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'filename', 'branch' },
    lualine_x = { 'searchcount', 'diff' },
    lualine_y = { 'filetype', 'progress' },
    lualine_z = { 'location' },
  },
}
