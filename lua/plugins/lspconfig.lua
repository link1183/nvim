return {
  "neovim/nvim-lspconfig",
  event = "VeryLazy",
  config = function()
    require "plugins.configs.lspconfig"
  end,
}
