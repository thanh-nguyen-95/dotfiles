-- called when which-key is removed
require("core.utils").load_mappings()

local opt = vim.opt

opt.clipboard = ""
opt.cul = false
opt.shiftwidth = 2
opt.mouse = ""
opt.signcolumn = "yes"
opt.colorcolumn = "80"
opt.tabstop = 2
opt.softtabstop = 2
opt.undofile = false
opt.wrap = false
