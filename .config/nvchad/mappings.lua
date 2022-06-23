local M = {}

M.disabled = {
  n = {
      -- general
      ["<C-h>"] = { "<C-w>h", " window left" },
      ["<C-l>"] = { "<C-w>l", " window right" },
      ["<C-j>"] = { "<C-w>j", " window down" },
      ["<C-k>"] = { "<C-w>k", " window up" },

      -- lspconfig
      ["<leader>ls"] = {
         function()
            vim.lsp.buf.signature_help()
         end,
         "   lsp signature_help",
      },
      ["<leader>ra"] = {
         function()
            require("nvchad.ui.renamer").open()
         end,
         "   lsp rename",
      },
      ["[d"] = {
         function()
            vim.diagnostic.goto_prev()
         end,
         "   goto prev",
      },
      ["d]"] = {
         function()
            vim.diagnostic.goto_next()
         end,
         "   goto_next",
      },
      ["<leader>q"] = {
         function()
            vim.diagnostic.setloclist()
         end,
         "   diagnostic setloclist",
      },
      ["<leader>fm"] = {
         function()
            vim.lsp.buf.formatting()
         end,
         "   lsp formatting",
      },

      -- nvimtree
      ["<C-n>"] = { "<cmd> NvimTreeToggle <CR>", "   toggle nvimtree" },
      ["<leader>e"] = { "<cmd> NvimTreeFocus <CR>", "   focus nvimtree" },

      -- telescope
      ["<leader>ff"] = { "<cmd> Telescope find_files <CR>", "  find files" },
      ["<leader>fa"] = { "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>", "  find all" },
      ["<leader>fw"] = { "<cmd> Telescope live_grep <CR>", "   live grep" },
      ["<leader>fb"] = { "<cmd> Telescope buffers <CR>", "  find buffers" },
      ["<leader>fh"] = { "<cmd> Telescope help_tags <CR>", "  help page" },
      ["<leader>fo"] = { "<cmd> Telescope oldfiles <CR>", "   find oldfiles" },
      ["<leader>tk"] = { "<cmd> Telescope keymaps <CR>", "   show keys" },
  }
}

M.general = {
   n = {
      -- switch between windows
      ["<leader>h"] = { "<C-w>h", " window left" },
      ["<leader>l"] = { "<C-w>l", " window right" },
      ["<leader>j"] = { "<C-w>j", " window down" },
      ["<leader>k"] = { "<C-w>k", " window up" },
   },
}

M.lspconfig = {
   n = {
      ["<leader>k"] = {
         function()
            vim.lsp.buf.signature_help()
         end,
         "   lsp signature_help",
      },

      ["<leader>rn"] = {
         function()
            require("nvchad.ui.renamer").open()
         end,
         "   lsp rename",
      },

      ["gN"] = {
         function()
            vim.diagnostic.goto_prev()
         end,
         "   goto prev",
      },

      ["gn"] = {
         function()
            vim.diagnostic.goto_next()
         end,
         "   goto_next",
      },

      ["<leader>="] = {
         function()
            vim.lsp.buf.formatting()
         end,
         "   lsp formatting",
      },
   },
}

M.nvimtree = {
   n = {
      ["<leader>pv"] = { "<cmd> NvimTreeToggle <CR>", "   toggle nvimtree" },
   },
}

M.telescope = {
   n = {
      -- find
      ["<C-p>"] = { "<cmd> Telescope find_files <CR>", "  find files" },
      ["<leader>pf"] = { "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>", "  find all" },
      ["<leader>ps"] = { "<cmd> Telescope live_grep <CR>", "   live grep" },
      ["<leader>pb"] = { "<cmd> Telescope buffers <CR>", "  find buffers" },
      ["<leader>ph"] = { "<cmd> Telescope help_tags <CR>", "  help page" },
      ["<leader>po"] = { "<cmd> Telescope oldfiles <CR>", "   find oldfiles" },
      ["<leader>pk"] = { "<cmd> Telescope keymaps <CR>", "   show keys" },
   },
}

return M