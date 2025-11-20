return {
  {
    'mfussenegger/nvim-dap',
    -- event = 'User Basefile',
    config = function(_, opts)
      local dap = require 'dap'
         -- Python
      dap.adapters.python = {
          type = 'executable',
          command = vim.fn.stdpath('data')..'/mason/packages/debugpy/venv/bin/python',
          args = { '-m', 'debugpy.adapter' },
      }
      dap.configurations.python = {
        {
          type = "python",
          request = "launch",
          name = "Launch file",
          program = "${file}", -- This configuration will launch the current file if used.
        },
      }

    end
  },
  -- { 'mfussenegger/nvim-dap-python' } 
}
