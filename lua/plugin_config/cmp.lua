local cmp = require'cmp'

cmp.setup({
  -- Configuración de snippets.
  snippet = {
    -- REQUERIDO - debes especificar un motor de snippets.
    expand = function(args)
      -- vim.fn["vsnip#anonymous"](args.body) -- Para usuarios de `vsnip`.
      require('luasnip').lsp_expand(args.body) -- Para usuarios de `luasnip`.
      -- require('snippy').expand_snippet(args.body) -- Para usuarios de `snippy`.
      -- vim.fn["UltiSnips#Anon"](args.body) -- Para usuarios de `ultisnips`.
    end,
  },
  -- Configuración de la ventana de autocompletado.
  window = {
    -- completion = cmp.config.window.bordered(),
    -- documentation = cmp.config.window.bordered(),
  },
  -- Mapeo de teclas.
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Acepta el elemento seleccionado actualmente. Establece `select` a `false` para confirmar solo los elementos seleccionados explícitamente.
  }),
  -- Configuración de las fuentes de autocompletado.
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' }, -- Para usuarios de luasnip.
  }, {
    { name = 'buffer' },
  })
})
