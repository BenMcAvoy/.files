-- Clear search highlight on escape
vim.keymap.set("n", "<Esc>", vim.cmd.nohl)

-- Keybind to `NvimTreeToggle`on leader e
vim.keymap.set("n", "<Leader>e", vim.cmd.NvimTreeToggle)

-- Lazygit on leader gg
vim.keymap.set("n", "<Leader>gg", vim.cmd.LazyGit)

-- Leader fx to open telescope
local tele_builtin = require("telescope.builtin")
vim.keymap.set("n", "<Leader>ff", tele_builtin.find_files)
vim.keymap.set("n", "<Leader>fg", tele_builtin.live_grep)
vim.keymap.set("n", "<Leader>fb", tele_builtin.buffers)
vim.keymap.set("n", "<Leader>fh", tele_builtin.help_tags)

local function toggleCopilot() vim.cmd("Copilot toggle") end
vim.keymap.set("n", "<Leader>ct", toggleCopilot)

function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

-- TT to toggle terminal
vim.keymap.set("n", "<Leader>tt", vim.cmd.ToggleTerm)

-- Renaming support --
vim.keymap.set("n", "<leader>rn", ":IncRename ")
