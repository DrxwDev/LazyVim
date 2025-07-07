return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  opts = {
    check_ts = true, -- Enable Treesitter integration
  },
  config = function(_, opts)
    require("nvim-autopairs").setup(opts)

    -- Integración con completion plugin si usas nvim-cmp
    local cmp_ok, cmp = pcall(require, "cmp")
    if cmp_ok then
      local cmp_autopairs = require("nvim-autopairs.completion.cmp")
      cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
    end
  end,
}
