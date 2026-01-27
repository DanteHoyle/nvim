return {
  {
    'OXY2DEV/markview.nvim',
    lazy = false,
    keys = {
      {
        '<LEADER>mm',
        '<CMD>Markview<CR>',
        desc = 'Find Files'
      },
    }

  },

  {
    'dhruvasagar/vim-table-mode'
  },
  {
    "3rd/image.nvim",
    build = false, -- so that it doesn't build the rock https://github.com/3rd/image.nvim/issues/91#issuecomment-2453430239
    opts = {
      processor = "magick_cli",
    }
  },
  {
    "3rd/diagram.nvim",
    opts = { -- you can just pass {}, defaults below
      events = {
        -- render_buffer = { "InsertLeave", "BufWinEnter", "TextChanged" },
        render_buffer = {},
        clear_buffer = { "BufLeave" },
      },
    },
    keys = {
    {
      "K", -- or any key you prefer
      function()
        require("diagram").show_diagram_hover()
      end,
      mode = "n",
      ft = { "markdown", "norg" }, -- Only in these filetypes
      desc = "Show diagram in new tab",
    },
  },
  },
}
