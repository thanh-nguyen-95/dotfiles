return {
  {
    "supermaven-inc/supermaven-nvim",
    opts = {
      log_level = "off", -- set to "off" to disable logging completely
      disable_inline_completion = false, -- disables inline completion for use with cmp
      keymaps = {
        accept_suggestion = "<C-\\>",
        clear_suggestion = "<C-]>",
        accept_word = "<C-'>",
      },
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        position = "right",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = {
        enabled = false,
      },
    },
  },
}
