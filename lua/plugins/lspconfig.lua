return {
  {
    -- Language server protocols
    "neovim/nvim-lspconfig",
    event = "VeryLazy",
    config = function()
      require "plugins.configs.lspconfig"
    end,
  },
}
