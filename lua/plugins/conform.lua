return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      -- Web formats
      html = { "prettier" },
      javascript = { "prettierd" },
      typescript = { "prettierd" },
      javascriptreact = { "prettierd" },
      typescriptreact = { "prettierd" },
      -- Optional: CSS/SCSS if needed
      css = { "prettier" },
      scss = { "prettier" },
    },
    formatters = {
      prettier = {
        prepend_args = {
          "--parser",
          "typescript", -- For TS files
        },
      },
      prettierd = {
        prepend_args = {
          "--parser",
          "typescript",
        },
      },
    },
  },
}
