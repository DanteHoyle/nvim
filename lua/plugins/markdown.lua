return {
  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.icons' },
    opts = {},
    ft = "markdown",
    config = function()
      require('render-markdown').disable()
    end
  },
  {
    'dhruvasagar/vim-table-mode',
    ft = "markdown",
  },
  {
    "3rd/image.nvim",
    build = false, -- so that it doesn't build the rock https://github.com/3rd/image.nvim/issues/91#issuecomment-2453430239
    opts = {
      processor = "magick_cli",
    },

    ft = "markdown",
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
    ft = "markdown",
  },
}
