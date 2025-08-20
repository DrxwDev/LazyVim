return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      html = { "prettier" },
      javascript = { "prettier" },
      typescript = { "prettier" },
      javascriptreact = { "prettier" },
      typescriptreact = { "prettier" },
      css = { "prettier_css" },
      scss = { "prettier_css" },
    },
    formatters = {
      prettier = {}, -- TS/JS
      prettier_css = {
        command = "prettier",
        args = { "--parser", "css" },
      },
    },
  },
}
