return {
  -- Toggle comment blocks
  "numToStr/Comment.nvim",
  keys = {
    { "gcc", mode = "n", desc = "Comment toggle current line" },
    { "gc", mode = { "n", "o" }, desc = "Comment toggle linewise" },
    { "gc", mode = "x", desc = "Comment toggle linewise (visual)" },
    { "gbc", mode = "n", desc = "Comment toggle current block" },
    { "gb", mode = { "n", "o" }, desc = "Comment toggle blockwise" },
    { "gb", mode = "x", desc = "Comment toggle blockwise (visual)" },
  },
  init = function()
    local wk = require "which-key"
    wk.register({
      ["/"] = {
        function()
          require("Comment.api").toggle.linewise.current()
        end,
        "Toggle comment",
      },
    }, {
      prefix = "<leader>",
      mode = "n",
    })
    wk.register({
      ["/"] = {
        "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
        "Toggle comment",
      },
    }, {
      prefix = "<leader>",
      mode = "v",
    })
  end,
  config = function(_, opts)
    require("Comment").setup(opts)
  end,
}
