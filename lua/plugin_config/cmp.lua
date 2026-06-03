require("blink.cmp").setup({
  snippets = {
    preset = "luasnip",
  },

  keymap = {
    preset = "default",

    ["<CR>"] = { "accept", "fallback" },

    ["<Tab>"] = {
      "snippet_forward",
      "select_next",
      "fallback",
    },

    ["<S-Tab>"] = {
      "snippet_backward",
      "select_prev",
      "fallback",
    },
  },

  appearance = {
    nerd_font_variant = "mono",
  },

  completion = {
    documentation = {
      auto_show = true,
      auto_show_delay_ms = 200,
    },

    ghost_text = {
      enabled = true,
    },
  },

  signature = {
    enabled = true,
  },

  sources = {
    default = {
      "lsp",
      "snippets",
      "buffer",
      "path",
    },
  },
})
