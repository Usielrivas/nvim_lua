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

  sources = {
    default = {
      "lsp",
      "snippets",
      "buffer",
      "path",
    },
  },
})
