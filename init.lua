--[[ init.lua ]]

local g = vim.g

-- Leader
g.mapleader = ","
g.localleader = "\\"

-- Imports
require('vars')
require('opts')
require('maps')
-- Lsp
require('lsp')
require('lsp/python')
require('lsp/rust')
require('lsp/lua')
require('lsp/clang')
require('lsp/bash')
require('lsp/cmake')
-- Plugins
require('plug/packer')
require('plug/treesitter')
require('plug/fidget')
require('plug/tree')
require('plug/line')
require('plug/telescope')
require('plug/autopairs')
require('plug/indent')
require('plug/cmp')
