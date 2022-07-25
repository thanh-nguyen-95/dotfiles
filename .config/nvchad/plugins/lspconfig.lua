-- local M = {}
--
-- M.setup_lsp = function(attach, capabilities)
--    local lspconfig = require "lspconfig"
--
--    -- lspservers with default config
--    local servers = { "html", "cssls", "tsserver", "svelte", "eslint", "jsonls" }
--
--    for _, lsp in ipairs(servers) do
--       lspconfig[lsp].setup {
--          on_attach = attach,
--          capabilities = capabilities,
--       }
--    end
-- end
--
-- return M
--
-- custom.plugins.lspconfig
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "jsonls", "svelte", "tsserver", "tailwindcss"}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
