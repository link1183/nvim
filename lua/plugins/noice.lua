return {
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    config = require "plugins.configs.noice",
    dependencies = {
      "MunifTanjim/nui.nvim",
      -- "rcarriga/nvim-notify",
    },
  },
}
