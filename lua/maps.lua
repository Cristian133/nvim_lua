--[[ keys.lua ]]

local map = vim.keymap.set
local builtin = require('telescope.builtin')

-- Normal mode
map('i', '<leader><leader>', '<esc>', {})

-- Search
map('n', '<leader><cr>', ':noh<cr>', {})

-- Yank and put system pasteboard with <Leader>y/p
map('n', '<leader>p', '"+p', {})
map('n', '<leader>y', '"+yy', {})

-- Buffers
map('n', '<leader><Right>', ':bnext<cr>', {})
map('n', '<leader><Left>', ':bprevious<cr>', {})
map('n', '<leader>l', ':bnext<cr>', {})
map('n', '<leader>h', ':bprevious<cr>', {})

-- windows
map ('n', '<A-w>', '<C-w>', {})

-- Toggle plugins
-- nvim-tree
map('n', '<leader>n', [[:NvimTreeToggle<cr>]], {})
-- telescope
map('n', '<leader>ff', builtin.find_files, {})
map('n', '<leader>fg', builtin.live_grep, {})
map('n', '<leader>fb', builtin.buffers, {})
map('n', '<leader>fh', builtin.help_tags, {})
