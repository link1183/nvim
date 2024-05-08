require "nvchad.mappings"

-- add yours here

local keymap = vim.keymap
local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>tb"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<F5>"] = {
      "<cmd> DapContinue <CR>",
      "Run or continue the debugger",
    },
    ["<F6>"] = {
      "<cmd> DapStepOver <CR>",
      "Step over",
    },
    ["<F7>"] = {
      "<cmd> DapStepInto <CR>",
      "Step into",
    },
    ["<F8>"] = {
      "<cmd> DapStepOut <CR>",
      "Step out",
    },
  },
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dpr"] = {
      function()
        require("dap-python").test_method()
      end,
    },
  },
}
keymap.set("n", ";", ":", { desc = "CMD enter command mode" }) -- Set ; to CMD as it's close to :
keymap.set("i", "jk", "<ESC>") -- jk to exit normal mode

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab
keymap.set("n", "<leader>r", ":so %<CR>")

return M
