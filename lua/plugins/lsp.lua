return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.servers = opts.servers or {}

      opts.servers.tsserver = opts.servers.tsserver or {}
      opts.servers.eslint = opts.servers.eslint or {}

      opts.ensure_installed = {
        "tsserver",
        "html",
        "cssls",
        "tailwindcss",
        "lua_ls",
        "emmet_ls",
        "eslint",
        "tailwindcss",
        "omnisharp",
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
              -- Para forzar atributos con comillas
              ["bem.enabled"] = true,
            },
          },
        },
      }
    end,
  },
}
