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

M.mappings = require("custom.mappings")

M.options = {
	user = function()
		require("custom.options")
	end,
}

return M
