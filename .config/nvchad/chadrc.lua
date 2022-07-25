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
		["nvim-treesitter/nvim-treesitter"] = {
			ensure_installed = {
				"html",
				"css",
				"json",
				"svelte",
				"typescript",
				"tsx",
				"markdown",
			},
		},
		["neovim/nvim-lspconfig"] = {
			config = function()
				require("plugins.configs.lspconfig")
				require("custom.plugins.lspconfig")
			end,
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
