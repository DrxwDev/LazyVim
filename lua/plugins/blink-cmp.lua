return {
  {
    "saghen/blink.cmp",
    dependencies = {
      "rafamadriz/friendly-snippets", -- snippets externos
      "L3MON4D3/LuaSnip", -- motor de snippets
      "moyiz/blink-emoji.nvim",
    },
    version = "*",
    lazy = true,
    opts = {
      completion = {
        menu = { winblend = vim.o.pumblend },
      },
      signature = {
        window = { winblend = vim.o.pumblend },
      },

      keymap = {
        preset = "enter",
        mappings = {
          ["<C-p>"] = "select_prev_item",
          ["<C-n>"] = "select_next_item",
          ["<C-Space>"] = "complete",
          ["<C-e>"] = "close",
          ["<TAB>"] = "accept",
        },
      },

      appearance = {
        nerd_font_variant = "normal",
      },

      sources = {
        default = { "lsp", "path", "snippets", "buffer", "emoji" },
        providers = {
          emoji = {
            module = "blink-emoji",
            name = "Emoji",
            score_offset = 15,
            opts = { insert = true },
            should_show_items = function()
              return vim.tbl_contains({ "gitcommit", "markdown" }, vim.o.filetype)
            end,
          },
        },
      },

      snippets = {
        expand = function(snippet)
          require("luasnip").lsp_expand(snippet)
        end,
      },

      fuzzy = { implementation = "prefer_rust_with_warning" },
    },
    opts_extend = { "sources.default" },

    config = function(_, opts)
      require("blink.cmp").setup(opts)

      -- cargar friendly-snippets
      require("luasnip.loaders.from_vscode").lazy_load()

      -- cargar tus propios snippets
      require("luasnip.loaders.from_vscode").lazy_load({
        paths = { vim.fn.stdpath("config") .. "/snippets" },
      })
    end,
  },
}
