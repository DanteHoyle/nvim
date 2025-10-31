return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { -- If encountering errors, see telescope-fzf-native README for installation instructions
      'nvim-telescope/telescope-fzf-native.nvim',

      -- `build` is used to run some command when the plugin is installed/updated.
      -- This is only run then, not every time Neovim starts up.
      build = 'make',

      -- `cond` is a condition used to determine whether this plugin should be
      -- installed and loaded.
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },
    { 'nvim-telescope/telescope-ui-select.nvim' },

    -- Useful for getting pretty icons, but requires a Nerd Font.
    { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
  },

  lazy = false,

  config = function()
    require('telescope').setup{}
    -- Enable Telescope extensions if they are installed
    pcall(require('telescope').load_extension, 'fzf')
    pcall(require('telescope').load_extension, 'ui-select')
  end,

  keys = {
    { '<leader>ff', '<cmd>Telescope find_files<cr>', desc = 'Find Files' },
    { 'grr', '<cmd>Telescope lsp_references<cr>', desc = 'Find LSP References' },
    { '<leader>fg', '<cmd>Telescope live_grep<cr>', desc = 'Search files with grep' },
    { '<leader><leader>', '<cmd>Telescope builtin<cr>', desc = 'Telescope Builtin' },
    { '<leader>fh', '<cmd>Telescope help_tags<cr>', desc = 'Search Vim Help' },
    { '<leader>b', '<cmd>Telescope buffers<cr>', desc = 'Search buffers' },
    { 'gD', '<cmd>Telescope lsp_definitions<cr>', desc = 'Search buffers' },
  }
}
