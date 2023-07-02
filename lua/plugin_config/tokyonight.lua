-- Carga el módulo Tokyo Night para Neovim
require("tokyonight").setup({
  -- Establece el estilo del tema. Puede ser `storm`, `moon`, `night`, o `day`.
  style = "night", 
  -- Habilita esta opción para desactivar la configuración del color de fondo
  transparent = false, 
  -- Configura los colores utilizados al abrir un `:terminal` en Neovim
  terminal_colors = true, 
  -- Configura los estilos a aplicar a diferentes grupos de sintaxis
  styles = {
    -- Estilo a aplicar a los comentarios
    comments = { italic = true },
    -- Estilo a aplicar a las palabras clave
    keywords = { italic = true },
    -- Estilo a aplicar a las funciones
    functions = {},
    -- Estilo a aplicar a las variables
    variables = {},
    -- Estilo de fondo para barras laterales, puede ser "dark", "transparent" o "normal"
    sidebars = "dark", 
    -- Estilo de fondo para ventanas flotantes
    floats = "dark", 
  },
  -- Establece un fondo más oscuro para ventanas como Quickfix y ayuda
  sidebars = { "qf", "help" }, 
  -- Ajusta el brillo de los colores del estilo "Day"
  day_brightness = 0.3, 
  -- Habilita esta opción para ocultar las líneas de estado inactivas y reemplazarlas con un borde delgado
  hide_inactive_statusline = false, 
  -- Habilita esta opción para oscurecer las ventanas inactivas
  dim_inactive = false, 
  -- Habilita esta opción para hacer que los encabezados de sección en el tema Lualine sean en negrita
  lualine_bold = false, 
  -- Permite reemplazar grupos de colores específicos con otros grupos o un color hexadecimal personalizado
  on_colors = function(colors) end,
  -- Permite reemplazar resaltados específicos con otros grupos o un color hexadecimal personalizado
  on_highlights = function(highlights, colors) end,
})
