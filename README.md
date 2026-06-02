
# Neovim Config

Configuración simple de Neovim usando el gestor nativo de plugins (`vim.pack`).

## Requisitos

* Neovim 10+

## Plugins

### Utilidades

* nvim-autopairs
* Comment.nvim
* fzf-lua

### Apariencia

* gitsigns.nvim
* onedarkpro.nvim

### Snippets

* friendly-snippets
* LuaSnip

### LSP y autocompletado

* nvim-lspconfig
* nvim-cmp
* cmp-nvim-lsp
* cmp-buffer
* cmp_luasnip

## Uso

1. Copia `init.lua` en:

   * Linux: `~/.config/nvim/init.lua`
   * Windows: `$HOME\AppData\Local\nvim\init.lua`

2. Abre Neovim

3. Los plugins se instalarán automáticamente con `vim.pack.add()`

