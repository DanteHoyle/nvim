return {
  -- {
  --   'catppuccin/nvim',
  --   name = 'catppuccin',
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.cmd [[colorscheme catppuccin-latte]]
  --   end,
  -- },
  -- {
  --   'p00f/alabaster.nvim',
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.cmd [[colorscheme alabaster]]
  --   end,
  -- },
  --
  {
    'navarasu/onedark.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('onedark').setup({
        highlights = {
          ["@comment"] = { fg = '#e5c07b' },  -- Tree-sitter comments
          ["Comment"] = { fg = '#e5c07b' },   -- Regular comments
          ["@lsp.type.comment"] = { fg = '#e5c07b' } -- LSP Comments
        }
      })
      require('onedark').load()
    end,
  },
}
