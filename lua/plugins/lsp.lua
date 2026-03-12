return {
  {
    'mason-org/mason.nvim',
    build = ':MasonUpdate',
    lazy = false,
    opts = {},
  },
  {
    'mason-org/mason-lspconfig.nvim',
    dependencies = {
      'mason-org/mason.nvim',
      'neovim/nvim-lspconfig',
    },
    opts = {
      ensure_installed = {
        'clangd',
        'lua_ls',
        'pyright',
        'vtsls',
      },
    },
  },
  {
    'neovim/nvim-lspconfig',
  },
  -- {
  --   'stevearc/conform.nvim',
  --   opts = {
  --     formatters_by_ft = {
  --       typescript = { 'prettier' },
  --       python = { 'ruff' }
  --     },
  --     format_on_save = {
  --       timeout_ms = 500,
  --       lsp_fallback = true,
  --     },
  --   }
  -- },
  {
    'benomahony/uv.nvim',
    ft = { 'python' },
    opts = {},
  },
  {
    "folke/lazydev.nvim",
    ft = "lua",
    opts = {
      library = {
        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
      },
    },
  }
}
