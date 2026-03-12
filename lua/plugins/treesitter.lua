-- File: treesitter.lua
return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      local configs = require("nvim-treesitter.configs")
      configs.setup({
        auto_install = false,
        sync_install = false,
        highlight = { enable = true },
        indent = {
          enable = true,
          disable = { 'html' }
        },
        modules = {},
        ignore_install = {},
        ensure_installed = {
          'bash',
          'c',
          'css',
          'dockerfile',
          'html',
          'javascript',
          'json',
          'jsonc',
          'lua',
          'make',
          'markdown',
          'python',
          'regex',
          'sql',
          'toml',
          'tsx',
          'typescript',
          'vim',
          'vimdoc',
          'yaml',
        },
      })
    end
  },
  { 'HiPhish/rainbow-delimiters.nvim' },
}
