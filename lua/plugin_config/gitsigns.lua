-- Configuración para el plugin "gitsigns"
require("gitsigns").setup {
    -- Configura la columna de signos para ser automática
    signcolumn = auto,
    -- Cuando se adjunta al editor, cambia la columna de signos a "yes"
    on_attach = function()
        vim.wo.signcolumn = "yes"
    end,
    -- Muestra el blame de la línea actual
    current_line_blame = true -- Puedes alternar esto con `:Gitsigns toggle_current_line_blame`
}
