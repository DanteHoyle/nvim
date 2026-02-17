local util = require('../utility')

return {
  {
    "neanias/everforest-nvim",
    priority = 1000,
    config = function()
      if util.is_dark_mode() then
        vim.cmd [[ colorscheme everforest ]]
      else
        -- vim.cmd [[ colorscheme github_light ]]
      end
    end
  }

}
