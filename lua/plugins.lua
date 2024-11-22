-- Instalación de Packer
require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  -- Plugins de utilidad
  use {
    'windwp/nvim-autopairs',
    'tpope/vim-surround',
    'numToStr/Comment.nvim',
    'mhartington/formatter.nvim',
    'ibhagwan/fzf-lua',
  }

  -- Plugins de temas y apariencia
  use 'lewis6991/gitsigns.nvim'

  -- Plugin para mejorar el soporte de idiomas
  use {
    'rafamadriz/friendly-snippets',
    'kristijanhusak/vim-carbon-now-sh'
  }

  use 'L3MON4D3/LuaSnip'

  -- Plugin para resaltar sintaxis
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use {
    'xiyaowong/nvim-transparent',
  }

  -- Plugin para autocompletado y sugerencias
  use 'navarasu/onedark.nvim'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/nvim-cmp'
  use 'saadparwaiz1/cmp_luasnip' 
end)
