-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use { "rose-pine/nvim", as = "rose-pine" }

  use { "catppuccin/nvim", as = "catppuccin" }

  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons' -- OPTIONAL: for file icons
  use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
  use 'romgrk/barbar.nvim'

  use ( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use { "neovim/nvim-lspconfig", as = "lspconfig" }
  use 'mfussenegger/nvim-jdtls'
  use 'williamboman/nvim-lsp-installer'
  use { "hrsh7th/nvim-cmp"}
  use { "hrsh7th/cmp-nvim-lsp"}
  use { "saadparwaiz1/cmp_luasnip"}
  use { "L3MON4D3/LuaSnip"}

  use("tpope/vim-fugitive")

end)
