local options = {
  formatters_by_ft = {
    -- These formatters are Mason plugins, loaded in mason.lua's ensure installed table
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    python = { "black" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
