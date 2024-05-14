return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = "VeryLazy",
    opts = function()
      return require "plugins.configs.null-ls"
    end,
  },
  {
    "saecki/crates.nvim",
    ft = { "rust", "toml" },
    config = function(_, opts)
      local crates = require "crates"
      crates.setup(opts)
      crates.show()
    end,
  },
  {
    "tpope/vim-sleuth",
    event = "VeryLazy",
  },
  {
    "cappyzawa/trim.nvim",
    event = "VeryLazy",
    opts = {
      ft_blocklist = { "markdown" },
    },
  },
  {
    "nvim-tree/nvim-web-devicons",
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VeryLazy",
    opts = {
      options = {
        icons_enabled = true,
        theme = "auto",
        component_separators = "|",
        section_separators = { left = "", right = "" },
      },
    },
  },
  -- Only load whichkey after all the gui
  {
    "folke/which-key.nvim",
    keys = { "<leader>", "<c-r>", "<c-w>", '"', "'", "`", "c", "v", "g" },
    cmd = "WhichKey",
    config = function(_, opts)
      local wk = require "which-key"
      wk.setup(opts)
      wk.register({
        ["f"] = { name = "Find" },
      }, { prefix = "<leader>" })
    end,
  },
  {
    "nvim-neotest/nvim-nio",
  },
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    config = function()
      require "configs.conform"
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
  ,
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
}
