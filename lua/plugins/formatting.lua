return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    config = function()
      require "plugins.configs.conform"
    end,
  },
  {
    "mhartington/formatter.nvim",
    event = "VeryLazy",
    opts = function()
      return require "plugins.configs.formatter"
    end,
  },
  {
    "mfussenegger/nvim-lint",
    event = "VeryLazy",
    config = function()
      require "plugins.configs.lint"
    end,
  },
}
