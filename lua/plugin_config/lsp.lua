-- Configuración de lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- Mapeos
-- Consulta `:help vim.diagnostic.*` para obtener documentación sobre cualquiera de las siguientes funciones
local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

-- Utiliza una función on_attach para mapear las siguientes teclas solo después de que el servidor de lenguaje se conecte al búfer actual
local on_attach = function(client, bufnr)
  -- Habilita la autocompletado activado por <c-x><c-o>
  -- vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mapeos
  -- Consulta `:help vim.lsp.*` para obtener documentación sobre cualquiera de las siguientes funciones
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
end

local lsp_flags = {
  -- Esto es lo predeterminado en Nvim 0.7+
  debounce_text_changes = 150,
}

require('lspconfig')['solargraph'].setup {
  capabilities = capabilities,
  on_attach = on_attach,
  flags = lsp_flags,
}

require('lspconfig')['tsserver'].setup {
  capabilities = capabilities,
  on_attach = on_attach,
  flags = lsp_flags,
}

-- Todo lo siguiente con npm i -g vscode-langservers-extracted
require('lspconfig')['cssls'].setup {
  capabilities = capabilities,
  on_attach = on_attach,
  flags = lsp_flags,
}

require('lspconfig')['html'].setup {
  capabilities = capabilities,
  on_attach = on_attach,
  flags = lsp_flags,
}

require('lspconfig')['jsonls'].setup {
  capabilities = capabilities,
  on_attach = on_attach,
  flags = lsp_flags,
}

require('lspconfig')['eslint'].setup {
  capabilities = capabilities,
  on_attach = on_attach,
  flags = lsp_flags,
}

require('lspconfig')['emmet_ls'].setup({
    -- on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { "css", "eruby", "html", "javascript", "javascriptreact", "less", "sass", "scss", "svelte", "pug", "typescriptreact", "vue" },
    init_options = {
      html = {
        options = {
          -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
          ["bem.enabled"] = true,
        },
      },
    }
})
