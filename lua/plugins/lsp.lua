return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.servers = opts.servers or {}

      opts.servers.tsserver = vim.tbl_deep_extend("force", opts.servers.tsserver or {}, {
        root_dir = require("lspconfig.util").root_pattern("tsconfig.app.json", "tsconfig.json", "package.json"),
      })

      opts.servers.eslint = opts.servers.eslint or {}

      opts.ensure_installed = {
        "tsserver",
        "html",
        "cssls",
        "gopls",
        "tailwindcss",
        "lua_ls",
        "emmet_ls",
        "eslint",
        "tailwindcss",
      }

      opts.servers.emmet_ls = {
        filetypes = {
          "html",
          "css",
          "javascript",
          "javascriptreact",
          "typescriptreact",
        },
        init_options = {
          html = {
            options = {
              ["bem.enabled"] = true,
            },
          },
        },
      }
    end,
  },
}
