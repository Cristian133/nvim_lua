--[[ packer.nvim - https://github.com/wbthomason/packer.nvim ]]

local vim = vim
local cmd = vim.api.nvim_command
local fn = vim.fn

-- ensure that packer is installed
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    cmd('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
    cmd 'packadd packer.nvim'
end

cmd 'packadd packer.nvim'

local packer = require('packer')
local util = require('packer.util')
packer.init({
  package_root = util.join_paths(vim.fn.stdpath('data'), 'site', 'pack')
})

--- startup and add configure plugins
packer.startup({
  function()
    local use = require('packer').use
    --[[ Base]]
    use {
      'nvim-tree/nvim-tree.lua',
      requires = {
          'nvim-tree/nvim-web-devicons'
      },
      tag = 'nightly'
    }
    use { 'mhinz/vim-startify' }
    use { 'DanilaMihailov/beacon.nvim' }
    use { 'Mofiqul/dracula.nvim' }
    use {
      'nvim-lualine/lualine.nvim',
      requires = {
          'nvim-tree/nvim-web-devicons',
          opt = true}
      }
    -- [[ Dev ]]
    use {
      'nvim-telescope/telescope.nvim',
      requires = {
          {'nvim-lua/plenary.nvim'}
      }
    }
    use { 'windwp/nvim-autopairs' }
    use { 'lukas-reineke/indent-blankline.nvim' }

    -- [[ LSP ]]
    use {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      'neovim/nvim-lspconfig',
}
    -- Visualize lsp progress
    use 'j-hui/fidget.nvim'

    -- [[ Syntax/Treesitter ]]
    use 'nvim-treesitter/nvim-treesitter'

    -- [[ Completion ]]
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'

  end,
  config = {
    package_root = vim.fn.stdpath('data') .. '/site/pack'
  }
})
