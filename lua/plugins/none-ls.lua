return {
  "nvimtools/none-ls.nvim",
  ft = { "python" },
  opts = function()
    return require "plugins.configs.none-ls"
  end,
}
