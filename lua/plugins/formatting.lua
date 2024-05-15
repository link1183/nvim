return {
  {
    -- Nvim formatter
    "stevearc/conform.nvim",
    event = "BufWritePre",
    config = function()
      require "plugins.configs.conform"
    end,
  },
  {
    -- Format on save
    "mhartington/formatter.nvim",
    event = "VeryLazy",
    opts = function()
      return require "plugins.configs.formatter"
    end,
  },
  {
    -- Linter for nvim
    "mfussenegger/nvim-lint",
    event = "VeryLazy",
    config = function()
      require "plugins.configs.lint"
    end,
  },
  {
    -- Formatting, automatically adjusts shiftwidth and expandtab based on the current file
    "tpope/vim-sleuth",
    event = "VeryLazy",
  },
  {
    -- Trims whitespaces and lines
    "cappyzawa/trim.nvim",
    event = "VeryLazy",
    opts = {
      ft_blocklist = { "markdown" },
    },
  },
}
