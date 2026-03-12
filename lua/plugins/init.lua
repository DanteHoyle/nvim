return {
  {
    'echasnovski/mini.surround',
    opts = {},
  },

  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = true
  },

  {
    'windwp/nvim-ts-autotag',
    event = 'InsertEnter',
    config = true,
  },

  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-mini/mini.icons" },
    opts = {},
    keys = {
      { '<C-p>',  '<CMD>FzfLua files<CR>',     desc = 'Search for Files with FZF' },
      { '<C-f>',  '<CMD>FzfLua live_grep<CR>', desc = 'Grep current file with FZF' },
      { '<C-\\>', '<CMD>FzfLua buffers<CR>',   desc = 'Search for Buffers with FZF' },
    }
  },

  {
    'folke/snacks.nvim',
    ---@type snacks.Config
    opts = {
      input = { enabled = true },
      rename = { enabled = true },
      indent = {
        enabled = true,
        animate = {
          enabled = false
        }
      },
    }
  },

  {
    'christoomey/vim-tmux-navigator',
    keys = {
      { '<A-h>',  '<cmd>TmuxNavigateLeft<cr>',     desc = 'Navigate Left' },
      { '<A-j>',  '<cmd>TmuxNavigateDown<cr>',     desc = 'Navigate Down' },
      { '<A-k>',  '<cmd>TmuxNavigateUp<cr>',       desc = 'Navigate Up' },
      { '<A-l>',  '<cmd>TmuxNavigateRight<cr>',    desc = 'Navigate Right' },
      { '<A-\\>', '<cmd>TmuxNavigatePrevious<cr>', desc = 'Navigate Previous' },
    },
    init = function()
      -- needs to be set before plugin is loaded
      vim.g.tmux_navigator_no_mappings = 1
    end
  },

  {
    'jiaoshijie/undotree',
    opts = {},
    keys = {
      { '<leader>u', function() require("undotree").toggle() end, desc = "Toggle undotree" }
    }
  }

}
