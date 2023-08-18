-- Importa la biblioteca "nvim-tree"
local nvim_tree = require("nvim-tree")

-- Configura el explorador de archivos
nvim_tree.setup({
  -- Configura la vista del explorador de archivos
  view = {
    -- Establece la altura del explorador de archivos
    -- height = 27,
    -- Establece el lado del explorador de archivos (izquierda o derecha)
    side = "right",
    -- Oculta la carpeta raíz en el explorador de archivos
    -- hide_root_folder = true,
  },
})
