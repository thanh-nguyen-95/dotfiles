return {
	-- INSTALL
	["jose-elias-alvarez/null-ls.nvim"] = {
		after = "nvim-lspconfig",
		config = function()
			require("null-ls").setup({
				sources = {
					require("null-ls").builtins.formatting.stylua,
					require("null-ls").builtins.formatting.prismaFmt,
					require("null-ls").builtins.formatting.prettier.with({
						prefer_local = true,
					}),
					require("null-ls").builtins.formatting.prismaFmt,
					require("null-ls").builtins.formatting.rustfmt,
				},
			})
		end,
	},
	["kylechui/nvim-surround"] = {
		config = function()
			require("nvim-surround").setup()
		end,
	},
	["neovim/nvim-lspconfig"] = {
		config = function()
			local on_attach = require("plugins.configs.lspconfig").on_attach
			local capabilities = require("plugins.configs.lspconfig").capabilities
			local lspconfig = require("lspconfig")
			local servers = {
				-- comment to enable multi-line
				"html",
				"cssls",
				"jsonls",
				"tsserver",
				"svelte",
				"tailwindcss",
				"prismals",
				"astro",
				"rust_analyzer",
			}

			for _, lsp in ipairs(servers) do
				lspconfig[lsp].setup({
					on_attach = on_attach,
					capabilities = capabilities,
				})
			end
		end,
	},
	["TimUntersberger/neogit"] = {
		config = function()
			local neogit = require("neogit")
			neogit.setup({})
		end,
	},
	["tpope/vim-abolish"] = {},
	-- OVERRIDE
	["hrsh7th/nvim-cmp"] = {
		override_options = function()
			local cmp = require("cmp")

			return {
				mapping = {
					["C-d"] = cmp.mapping.scroll_docs(-8),
				},
				sources = {
					{ name = "nvim_lsp" },
					{ name = "buffer" },
					{ name = "nvim_lua" },
					{ name = "path" },
				},
			}
		end,
	},
	-- REMOVE
	["folke/which-key.nvim"] = false,
}
