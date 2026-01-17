return {
  {
    'mason-org/mason.nvim',
    build = ':MasonUpdate',
    cmd = {
      'Mason',
      'MasonInstall',
      'MasonUninstall',
      'MasonUninstallAll',
      'MasonLog',
    },
    opts = {}
  },
  {
    'mason-org/mason-lspconfig.nvim',
    dependencies = {
      'mason-org/mason.nvim',
      'neovim/nvim-lspconfig',
    },
    opts = {
      ensure_installed = {
        -- 'pyright',
        'lua_ls',
      },
      automatic_installation = true,
    },
  },
  {
    'benomahony/uv.nvim',
    ft = { 'python' },
    dependencies = {
      'nvim-telescope/telescope.nvim'
    },
    opts = {
      picker_integration = true,
    },
  },
  {
    'pmizio/typescript-tools.nvim',
    dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
    opts = {},
  }
}
