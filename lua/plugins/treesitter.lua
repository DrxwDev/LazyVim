return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
      "html",
      "javascript",
      "lua",
      "tsx",
      "typescript",
      "css",
      -- Add more as needed
    },
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
    indent = { enable = true },
    auto_install = true,
    sync_install = false,
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<Enter>", -- set to `false` to disable one of the mappings
        node_incremental = "<Enter>",
        scope_incremental = false,
        node_decremental = "<Backspace>",
      },
    },
  },
}
