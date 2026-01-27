local util = require('../config/utility')

return {
  "projekt0n/github-nvim-theme",
  priority = 1000,
  config = function()
    if util.is_dark_mode() then
      vim.cmd[[ colorscheme github_dark ]]
    else
      vim.cmd[[ colorscheme github_light ]]
    end
  end
}
