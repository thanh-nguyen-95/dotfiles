local M = {}

M.ui = {
	theme = "kanagawa",
}

M.plugins = {
	user = require("custom.plugins"),
	options = {
		lspconfig = {
			setup_lspconf = "custom.plugins.lspconfig",
		},
	},
	remove = {
		"folke/which-key.nvim",
	},
}

M.mappings = require("custom.mappings")

M.options = {
	user = function()
		require("custom.options")
	end,
}

return M
