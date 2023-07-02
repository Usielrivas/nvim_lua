-- Se importa el tema Dracula
local dracula = require("dracula")

-- Se configuran los colores personalizados para el tema Dracula
dracula.setup({
  colors = {
    bg = "#1e212b",
    fg = "#F8F8F2",
    selection = "#44475A",
    comment = "#6272A4",
    red = "#FF5555",
    orange = "#FFB86C",
    yellow = "#F1FA8C",
    green = "#50fa7b",
    purple = "#BD93F9",
    cyan = "#8BE9FD",
    pink = "#FF79C6",
    bright_red = "#FF6E6E",
    bright_green = "#69FF94",
    bright_yellow = "#FFFFA5",
    bright_blue = "#D6ACFF",
    bright_magenta = "#FF92DF",
    bright_cyan = "#A4FFFF",
    bright_white = "#FFFFFF",
    menu = "#191b24",
    visual = "#3E4452",
    gutter_fg = "#4B5263",
    nontext = "#3B4048",
  },
  show_end_of_buffer = true, -- Muestra el caracter '~' después del final del buffer
  transparent_bg = false, -- Usa un fondo transparente
  lualine_bg_color = "#44475a", -- Establece un color de fondo personalizado para Lualine
  italic_comment = true, -- Hace cursiva los comentarios
  overrides = { -- Se pueden sobrescribir los resaltados por defecto
    -- NonText = { fg = dracula.colors().white }, -- Establece el color de NonText a blanco
    -- NvimTreeIndentMarker = { link = "NonText" }, -- Enlaza el resaltado a NonText
    -- Nothing = {} -- Borra el resaltado de Nothing
  },
})
