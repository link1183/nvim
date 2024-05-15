return {
  {
    -- Icons for nvim-tree
    "nvim-tree/nvim-web-devicons",
  },
  {
    -- Status line
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
    -- Adds help for keys
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
    -- Vim API stuff
    "nvim-neotest/nvim-nio",
  },
}
