return {
  { 'tpope/vim-repeat' },

  { 'tpope/vim-surround' },

  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = true
  },

  {
    'christoomey/vim-tmux-navigator',
    lazy = false,
    cmd = {
      'TmuxNavigateLeft',
      'TmuxNavigateDown',
      'TmuxNavigateUp',
      'TmuxNavigateRight',
      'TmuxNavigatePrevious',
    },
    keys = {
      { '<A-h>', '<cmd>TmuxNavigateLeft<cr>', desc = 'Navigate Left' },
      { '<A-j>', '<cmd>TmuxNavigateDown<cr>', desc = 'Navigate Down' },
      { '<A-k>', '<cmd>TmuxNavigateUp<cr>', desc = 'Navigate Up' },
      { '<A-l>', '<cmd>TmuxNavigateRight<cr>', desc = 'Navigate Right' },
      { '<A-\\>', '<cmd>TmuxNavigatePrevious<cr>', desc = 'Navigate Previous' },
    },
    init = function()
      -- needs to be set before plugin is loaded
      vim.g.tmux_navigator_no_mappings = 1
    end
  },

  {
    'OXY2DEV/markview.nvim',
    lazy = false,
  },

  {
    'dhruvasagar/vim-table-mode'
  },
}
