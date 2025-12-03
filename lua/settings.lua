-- Definimos el objeto 'set' como el acceso a las opciones de configuración de Vim
local set = vim.opt

-- Habilitamos el número de línea
set.number = true
set.numberwidth = 1 -- Establecemos el ancho de los números de línea a 1
set.relativenumber = true -- Habilitamos el modo de número de línea relativo
set.cmdheight = 0

-- Configuración de la copia y pegado con el portapapeles del sistema
set.clipboard = "unnamedplus" -- Habilitamos el portapapeles del sistema para copiar y pegar
set.spelllang= "es_mx"

-- Configuración de la apariencia
set.showcmd = true -- Mostramos comandos incompletos
set.ruler = true -- Mostramos la posición del cursor en la esquina inferior derecha
set.laststatus = 2 -- Mostramos la barra de estado en todo momento

-- Function to get current Git branch
local function get_git_branch()
  local branch = vim.fn.system("git branch --show-current 2>/dev/null")
  return branch ~= "" and branch:gsub("\n", "") or "No Branch"
end

set.statusline = '> %f %m %= %l:%c %p%% [Git: '..get_git_branch()..']'

-- Configuración del formato de archivo y codificación
set.encoding = "utf-8" -- Establecemos la codificación a UTF-8
set.tabstop = 2 -- Establecemos el ancho de la tabulación a 2
set.shiftwidth = 2 -- Establecemos el ancho de la indentación a 2
set.softtabstop = 2 -- Establecemos el número de espacios para una tabulación a 2
set.expandtab = true -- Convertimos las tabulaciones en espacios

-- Configuración de la visualización del texto
set.showmatch = true -- Resaltamos el paréntesis correspondiente
set.sw = 4 -- Establecemos el ancho del salto de línea a 4
set.wrap = false -- Deshabilitamos el salto de línea automático
set.showmode = false -- Ocultamos el modo de edición en la esquina inferior izquierda

-- Activamos la visualización de caracteres especiales en el buffer actual.
set.list = true

-- Agregamos caracteres especiales para representar espacios en blanco y finales de línea, respectivamente.
-- set.listchars:append("space:-")
-- set.listchars:append("eol:↴")

-- Guardar cambios automáticamente al perder el foco
vim.api.nvim_command("autocmd BufLeave,FocusLost * silent! wall")

-- Deshabilitamos el mouse
set.mouse = ""

-- Asociar archivos .axlsx con ruby
vim.cmd('autocmd BufNewFile,BufRead *.axlsx set filetype=ruby')

-- help
-- buscar y remplazar
--find ./lib/pdf/config -type f -name "*.rb" -exec sed -i 's/PdfConfigurator.footer(view_name) || page_footer/page_footer || PdfConfigurator.footer(view_name)/g' {} +
