-- Capabilities
local capabilities = require("blink.cmp").get_lsp_capabilities()

-- Diagnostics
local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<space>e", vim.diagnostic.open_float, opts)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist, opts)

-- LSP Attach
local on_attach = function(_, bufnr)
  local bufopts = { noremap = true, silent = true, buffer = bufnr }

  vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
  vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
  vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, bufopts)

  vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, bufopts)

  vim.keymap.set("n", "<space>wl", function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)

  vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, bufopts)
  vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, bufopts)
  vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)

  vim.keymap.set("n", "<space>f", function()
    vim.lsp.buf.format({ async = true })
  end, bufopts)
end

local lsp_flags = {
  debounce_text_changes = 150,
}

local default_config = {
  capabilities = capabilities,
  on_attach = on_attach,
  flags = lsp_flags,
}

local function setup(server, config)
  vim.lsp.config(
    server,
    vim.tbl_deep_extend("force", default_config, config or {})
  )
end

-- Ruby
setup("solargraph", {
  filetypes = { "ruby" },
})

-- TypeScript / JavaScript
setup("ts_ls", {
  filetypes = {
    "typescript",
    "typescriptreact",
    "javascript",
    "javascriptreact",
  },
})

-- CSS / Style Servers
setup("cssls", {
  filetypes = { "css", "scss", "less" },
})

setup("html", {
  filetypes = { "html", "erb", "eruby", "vue", "svelte", "pug" },
})

setup("jsonls", {
  filetypes = { "json" },
})

setup("eslint", {
  filetypes = {
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
  },
})

-- SQL Language Server
setup("sqls", {
  cmd = {
    vim.fn.expand("~/bin/sqls"),
    "-config",
    vim.fn.expand("~/bin/config_base.yml"),
  },
})

-- Emmet
setup("emmet_ls", {
  filetypes = {
    "css",
    "eruby",
    "html",
    "javascript",
    "javascriptreact",
    "less",
    "sass",
    "scss",
    "svelte",
    "pug",
    "typescriptreact",
    "vue",
    "jst",
  },
  init_options = {
    html = {
      options = {
        ["bem.enabled"] = true,
      },
    },
  },
})

for _, server in ipairs({
  "sqls",
  "emmet_ls",
  "solargraph",
  "ts_ls",
  "cssls",
  "html",
  "jsonls",
  "eslint",
}) do
  vim.lsp.enable(server)
end
