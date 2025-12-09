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
  }

  -- {
  --   'mfussenegger/nvim-dap',
  --   -- event = 'User Basefile',
  --   config = function(_, opts)
  --     local dap = require 'dap'
  --        -- Python
  --     dap.adapters.python = {
  --         type = 'executable',
  --         command = vim.fn.stdpath('data')..'/mason/packages/debugpy/venv/bin/python',
  --         args = { '-m', 'debugpy.adapter' },
  --     }
  --     dap.configurations.python = {
  --       {
  --         type = "python",
  --         request = "launch",
  --         name = "Launch file",
  --         program = "${file}", -- This configuration will launch the current file if used.
  --       },
  --     }
  --
  --   end
  -- },
}
