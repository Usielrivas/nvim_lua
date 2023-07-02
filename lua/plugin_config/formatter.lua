-- Definimos la función `prettier_config` que retorna un objeto con la configuración de Prettier.
local function prettier_config()
  -- Obtenemos el ancho de línea del buffer actual.
  local textwidth = vim.bo.textwidth
  -- Obtenemos la ruta del archivo del buffer actual y la escapamos para que sea segura para usar en la línea de comandos.
  local filepath = vim.fn.shellescape(vim.api.nvim_buf_get_name(0))
  
  -- Retornamos el objeto de configuración para Prettier.
  return {
    -- Indicamos el ejecutable de Prettier.
    exe = 'prettier',
    -- Definimos los argumentos para Prettier.
    args = {
      '--config-precedence',
      'prefer-file', -- Preferir la configuración del archivo en lugar de la configuración global.
      '--print-width',
      textwidth, -- Utilizamos el ancho de línea obtenido anteriormente.
      '--stdin-filepath',
      filepath, -- Utilizamos la ruta del archivo del buffer actual.
    },
    -- Indicamos que queremos que Prettier lea el código de entrada desde la entrada estándar.
    stdin = true,
  }
end

-- Configuramos el plugin `formatter` para los siguientes tipos de archivo.
require('formatter').setup({
  filetype = {
    javascript = { prettier_config },
    typescriptreact = { prettier_config },
    javascriptreact = { prettier_config },
    html = { prettier_config },
    css = { prettier_config },
    json = { prettier_config },
    php = { prettier_config },
    vue = { prettier_config },
    svelte = { prettier_config },
    scss = { prettier_config },
    ruby = { prettier_config },
    eruby = { prettier_config },
  },
})
