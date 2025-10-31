-- File: init.lua

return {
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
  },

  {
    "kylechui/nvim-surround",
    keys = { "ys", "ds", "cs" },
    config = true,
  },

  {
    "knubie/vim-kitty-navigator",
    build = "cp ./*.py ~/.config/kitty/",
    config = function()
      vim.g.kitty_navigator_no_mappings = 1
    end,

    keys = {
      { "<C-`>h", "<cmd>KittyNavigateLeft<cr>", desc = "Move to left window" },
      { "<C-`>j", "<cmd>KittyNavigateDown<cr>", desc = "Move to bottom window" },
      { "<C-`>k", "<cmd>KittyNavigateUp<cr>", desc = "Move to top window" },
      { "<C-`>l", "<cmd>KittyNavigateRight<cr>", desc = "Move to right window" },
    },

  },

  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
  }
}
