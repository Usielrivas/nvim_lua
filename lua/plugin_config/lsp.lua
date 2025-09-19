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

-- Ruby
vim.lsp.config("solargraph", {
  capabilities = capabilities,
  on_attach = on_attach,
  flags = lsp_flags,
  filetypes = { "ruby" },
})

-- TypeScript / JavaScript
vim.lsp.config("ts_ls", {
  capabilities = capabilities,
  on_attach = on_attach,
  flags = lsp_flags,
  filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
})

-- CSS / Style Servers (requires npm i -g vscode-langservers-extracted)
vim.lsp.config("cssls", {
  capabilities = capabilities,
  on_attach = on_attach,
  flags = lsp_flags,
  filetypes = { "css", "scss", "less" },
})

vim.lsp.config("html", {
  capabilities = capabilities,
  on_attach = on_attach,
  flags = lsp_flags,
  filetypes = { "html", "erb", "eruby", "vue", "svelte", "pug" },
})

vim.lsp.config("jsonls", {
  capabilities = capabilities,
  on_attach = on_attach,
  flags = lsp_flags,
  filetypes = { "json" },
})

vim.lsp.config("eslint", {
  capabilities = capabilities,
  on_attach = on_attach,
  flags = lsp_flags,
  filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
})

-- SQL Language Server
vim.lsp.config("sqls", {
  cmd = { vim.fn.expand("~/bin/sqls"), "-config", vim.fn.expand("~/bin/config_base.yml") },
  capabilities = capabilities,
  on_attach = on_attach,
  flags = lsp_flags,
})

-- Emmet (HTML / CSS / JS / Vue / etc.)
vim.lsp.config("emmet_ls", {
  capabilities = capabilities,
  on_attach = on_attach,
  flags = lsp_flags,
  filetypes = {
    "css", "eruby", "html", "javascript", "javascriptreact", "less",
    "sass", "scss", "svelte", "pug", "typescriptreact", "vue", "jst"
  },
  init_options = {
    html = {
      options = {
        ["bem.enabled"] = true,
      },
    },
  },
})

vim.lsp.enable('sqls')
vim.lsp.enable('emmet_ls')
vim.lsp.enable('solargraph')
vim.lsp.enable('ts_ls')
vim.lsp.enable('cssls')
vim.lsp.enable('html')
vim.lsp.enable('jsonls')
vim.lsp.enable('eslint')

-- info "emmet-ls@0.4.2" has binaries:
--    - emmet-ls
-- info "ls_emmet@1.0.9" has binaries:
--    - ls_emmet
-- info "prettier@2.8.4" has binaries:
--    - prettier
-- info "typescript-language-server@3.3.0" has binaries:
--    - typescript-language-server
-- info "vscode-langservers-extracted@4.6.0" has binaries:
--    - vscode-css-language-server
--    - vscode-eslint-language-server
--    - vscode-html-language-server
--    - vscode-json-language-server
--    - vscode-markdown-language-server
