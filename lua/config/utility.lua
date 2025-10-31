local M = {}
---------------------
--UTILITY FUNCTIONS--
---------------------
-- open the current file externally 
function M.open_current_file()
  local path = vim.fn.expand("%")
  vim.ui.open(path)
end

return M
