require('lualine').setup {
  options = {
    -- Habilitar los iconos en la barra de estado
    icons_enabled = true,
    -- Establecer el tema de la barra de estado
    theme = 'auto',
    -- Establecer los separadores de componentes de la barra de estado
    component_separators = { left = '', right = ''},
    -- Establecer los separadores de sección de la barra de estado
    section_separators = { left = '', right = ''},
    -- Desactivar Lualine para los siguientes tipos de archivo
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    -- Ignorar la actualización de la barra de estado para las siguientes ventanas
    ignore_focus = {},
    -- Dividir la barra de estado siempre por la mitad
    always_divide_middle = true,
    -- Desactivar el estado global de Vim
    globalstatus = false,
    -- Establecer el tiempo de refresco en milisegundos para la barra de estado, la línea de pestañas y la barra de ventanas
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    -- Sección A: Modo de edición
    lualine_a = {'mode'},
    -- Sección B: Rama actual, cambios y diagnósticos
    lualine_b = {'branch', 'diff', 'diagnostics'},
    -- Sección C: Nombre del archivo
    lualine_c = {'filename'},
    -- Sección X: Codificación, formato de archivo y tipo de archivo
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    -- Sección Y: Progreso de desplazamiento en porcentaje
    lualine_y = {'progress'},
    -- Sección Z: Ruta del archivo
    lualine_z = {'location'}
  },
  inactive_sections = {
    -- Sección A: Vacía
    lualine_a = {},
    -- Sección B: Vacía
    lualine_b = {},
    -- Sección C: Nombre del archivo
    lualine_c = {'filename'},
    -- Sección X: Ruta del archivo
    lualine_x = {'location'},
    -- Sección Y: Vacía
    lualine_y = {},
    -- Sección Z: Vacía
    lualine_z = {}
  },
  -- Desactivar la línea de pestañas
  tabline = {},
  -- Desactivar la barra de ventanas
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
