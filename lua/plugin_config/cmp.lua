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
    { name = 'path' },
    -- { name = 'vsnip' }, -- Para usuarios de vsnip.
    { name = 'luasnip' }, -- Para usuarios de luasnip.
    -- { name = 'ultisnips' }, -- Para usuarios de ultisnips.
    -- { name = 'snippy' }, -- Para usuarios de snippy.
  }, {
    { name = 'buffer' },
  })
})

-- Configuración específica para el tipo de archivo `gitcommit`.
cmp.setup.filetype('gitcommit', {
  sources = cmp.config.sources({
    { name = 'cmp_git' }, -- Puedes especificar la fuente `cmp_git` si la has instalado.
  }, {
    { name = 'buffer' },
  })
})

-- Usa la fuente de buffer para `/` y `?` (si has habilitado `native_menu`, esto ya no funcionará).
cmp.setup.cmdline({ '/', '?' }, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})

-- Usa la fuente de cmdline y path para `:` (si has habilitado `native_menu`, esto ya no funcionará).
cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})

