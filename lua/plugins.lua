local Plugins = {
  -- Utilidades
  "https://github.com/windwp/nvim-autopairs",
  "https://github.com/ibhagwan/fzf-lua",
  -- Apariencia
  "https://github.com/lewis6991/gitsigns.nvim",
  "https://github.com/olimorris/onedarkpro.nvim",
  -- Snippets
  "https://github.com/rafamadriz/friendly-snippets",
  "https://github.com/L3MON4D3/LuaSnip",
  -- LSP y autocompletado
  "https://github.com/neovim/nvim-lspconfig",
  { src = "https://github.com/saghen/blink.cmp", version = "v1" },
}

vim.pack.add(Plugins)
