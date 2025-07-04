return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      -- Web formats
      html = { "prettier" },
      javascript = { "prettier" },
      typescript = { "prettier" },
      javascriptreact = { "prettier" },
      typescriptreact = { "prettier" },
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
    },
  },
}
