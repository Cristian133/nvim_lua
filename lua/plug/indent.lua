--[[ indentLine - https://github.com/Yggdroot/indentLine ]]

local opt = vim.opt

opt.list = true
opt.listchars:append 'eol:↴'

require('indent_blankline').setup {
    show_current_context = true,
    show_current_context_start = true,
    show_end_of_line = true,
}

