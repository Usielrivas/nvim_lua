-- Instalación de Packer
require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  -- Plugins de utilidad
  use {
    'windwp/nvim-autopairs',
    'tpope/vim-surround',
    'terrortylor/nvim-comment',
    'mhartington/formatter.nvim',
    'tpope/vim-fugitive',
    {'junegunn/fzf', run = './install --bin'},
    {'junegunn/fzf.vim', requires = {'kyazdani42/nvim-web-devicons'}}
  }

  -- Plugins de temas y apariencia
  use {
    'Mofiqul/dracula.nvim',
    {
      'lewis6991/gitsigns.nvim',
      -- tag = 'release' -- Para usar la última versión estable
    },
    {
      'nvim-lualine/lualine.nvim',
      requires = {'kyazdani42/nvim-web-devicons', opt = true}
    },
    'lukas-reineke/indent-blankline.nvim',
  }

  -- Plugin para manejar archivos
 use {
   'kyazdani42/nvim-tree.lua',
    --requires = {'kyazdani42/nvim-web-devicons'},
   tag = 'nightly' -- Se actualiza cada semana (ver issue #1193)
 }

  -- Plugin para mejorar el soporte de idiomas
  use {
    'sheerun/vim-polyglot',
    "rafamadriz/friendly-snippets",
    'kristijanhusak/vim-carbon-now-sh'
  }
  use({
  	"L3MON4D3/LuaSnip",
  	-- follow latest release.
  	-- install jsregexp (optional!:).
  	-- run = "make install_jsregexp"
  })

  -- Plugin para resaltar sintaxis
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use {
    'xiyaowong/nvim-transparent',
  }

  -- Plugin para autocompletado y sugerencias
  -- use {'neoclide/coc.nvim', branch = 'release'}
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'saadparwaiz1/cmp_luasnip' 
end)
