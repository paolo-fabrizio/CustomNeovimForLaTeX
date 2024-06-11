-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.6',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
	  "folke/tokyonight.nvim",
	  lazy = false,
	  priority = 1000,
	  opts = {}
  }
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use ('nvim-treesitter/playground')
  use ('mbbill/undotree')
  use ('tpope/vim-fugitive')

  -- LSP Packages 
  use {
	  {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	  {'neovim/nvim-lspconfig'},
      {"williamboman/mason.nvim"},
      {"williamboman/mason-lspconfig.nvim"},
	  {'hrsh7th/cmp-nvim-lsp'},
	  {'hrsh7th/nvim-cmp'},
	  {'L3MON4D3/LuaSnip'},
  }
  use ('prichrd/netrw.nvim')
  use ('nvim-tree/nvim-web-devicons')
end)
