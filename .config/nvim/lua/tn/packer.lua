-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	use({
		"rose-pine/neovim",
		as = "rose-pine",
		config = function()
			vim.cmd("colorscheme rose-pine")
		end,
	})

	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
	use("theprimeagen/harpoon")
	use("mbbill/undotree")
	use("tpope/vim-fugitive")
	use("kylechui/nvim-surround")

	use({
		"VonHeikemen/lsp-zero.nvim",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "saadparwaiz1/cmp_luasnip" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-nvim-lua" },

			-- Snippets
			{ "L3MON4D3/LuaSnip" },
			{ "rafamadriz/friendly-snippets" },
		},
	})

	use("folke/zen-mode.nvim")

	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})

	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
		config = function()
			require("lualine").setup({
				options = {
					icons_enabled = true,
					theme = "auto",
					component_separators = { left = "", right = "" },
					section_separators = { left = "", right = "" },
					disabled_filetypes = {
						statusline = {},
						winbar = {},
					},
					ignore_focus = {},
					always_divide_middle = true,
					globalstatus = false,
					refresh = {
						statusline = 1000,
						tabline = 1000,
						winbar = 1000,
					},
				},
				sections = {
					lualine_a = { "mode" },
					lualine_b = { "branch", "diff", "diagnostics" },
					lualine_c = { "filename" },
					lualine_x = { "encoding", "fileformat", "filetype" },
					lualine_y = { "progress" },
					lualine_z = { "location" },
				},
				inactive_sections = {
					lualine_a = {},
					lualine_b = {},
					lualine_c = { "filename" },
					lualine_x = { "location" },
					lualine_y = {},
					lualine_z = {},
				},
				tabline = {},
				winbar = {},
				inactive_winbar = {},
				extensions = {},
			})
		end,
	})

	use({
		"lukas-reineke/indent-blankline.nvim",
		config = function()
			require("indent_blankline").setup({
				char = "┊",
				show_trailing_blankline_indent = false,
			})
		end,
	})

	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})

	use("jose-elias-alvarez/null-ls.nvim")
	use("tpope/vim-abolish")
end)
