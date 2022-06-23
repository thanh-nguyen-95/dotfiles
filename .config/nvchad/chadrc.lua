local M = {}

M.ui = {
   theme = "gruvbox",
}

M.plugins = {
   user = require("custom.plugins"),
   options = {
      lspconfig = {
         setup_lspconf = "custom.plugins.lspconfig",
      },
   },
}

M.mappings = require('custom.mappings')

return M