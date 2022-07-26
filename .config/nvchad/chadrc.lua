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
		["neovim/nvim-lspconfig"] = {
			config = function()
				require("custom.plugins.lspconfig")
			end,
		},
	},
	remove = {
		"folke/which-key.nvim",
	},
}

M.mappings = require("custom.mappings")

return M
