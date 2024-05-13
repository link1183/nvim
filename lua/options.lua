require "nvchad.options"

local opt = vim.opt

opt.mouse = "a"

vim.o.cursorlineopt = "both"
vim.g.dap_virtual_text = true
vim.g.pyright_auto_refresh = 1

-- Disable persistent undo for files in /private directory
vim.api.nvim_create_autocmd("BufReadPre", { pattern = "/private/*", command = "set noundofile" })

-- Enable persistent undo for other files
opt.undofile = true

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- line wrapping
opt.wrap = false -- disable line wrapping

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
opt.cursorline = true -- highlight the current cursor line

-- appearance

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append "unnamedplus" -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false

opt.number = true
opt.showmatch = true
opt.colorcolumn = "120"
opt.termguicolors = true

opt.hidden = true
opt.history = 100
opt.synmaxcol = 240
