require("nvim-treesitter.configs").setup({
  -- Lista de nombres de parsers a instalar, o "all" para instalar todos los disponibles
  ensure_installed = { "ruby", "typescript", "tsx", "javascript" },
  -- Instalar parsers de forma síncrona (solo se aplica a `ensure_installed`)
  sync_install = false,
  -- Configuración de resaltado de sintaxis
  highlight = {
    -- Activar o desactivar el resaltado de sintaxis
    enable = true,
  },
  -- Configuración de selección incremental
  incremental_selection = {
    -- Activar o desactivar la selección incremental
    enable = true,
    -- Asignación de teclas para iniciar la selección incremental
    keymaps = {
      init_selection = "gnn",
    },
  },
})
