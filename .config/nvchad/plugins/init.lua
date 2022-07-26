return {
	["jose-elias-alvarez/null-ls.nvim"] = {
		after = "nvim-lspconfig",
		config = function()
			require("custom.plugins.null-ls")
		end,
	},
	["kylechui/nvim-surround"] = {
        config = function ()
           require("nvim-surround").setup()
        end
    },
}
