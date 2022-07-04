local M = {}

M.ui = {
	theme = "kanagawa",
}

M.plugins = {
	user = require("custom.plugins"),
	override = {
		["hrsh7th/nvim-cmp"] = {
			sources = {
				{ name = "nvim_lsp" },
				{ name = "buffer" },
				{ name = "nvim_lua" },
				{ name = "path" },
			},
		},
	},
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
