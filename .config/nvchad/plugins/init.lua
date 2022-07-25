return {
	["jose-elias-alvarez/null-ls.nvim"] = {
		after = "nvim-lspconfig",
		config = function()
			require("custom.plugins.null-ls")
		end,
	},
	["tpope/vim-surround"] = {},
	["tpope/vim-fugitive"] = {},
}
