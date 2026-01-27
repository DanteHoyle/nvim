-- File: treesitter.lua
return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      local configs = require("nvim-treesitter.configs")
      configs.setup({
        auto_install = true,
        sync_install = false,
        highlight = { enable = true },
        indent = {
          enable = true,
          disable = { 'html' }
        },
        modules = {},
        ignore_install = {},
        ensure_installed = {},
      })
    end
  },
  { 'HiPhish/rainbow-delimiters.nvim' },
}
