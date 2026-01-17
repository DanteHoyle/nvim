local M = {}
---------------------
--UTILITY FUNCTIONS--
---------------------
-- open the current file externally 
function M.open_current_file()
  local path = vim.fn.expand('%')
  vim.ui.open(path)
end

function M.insert_date()
  local date = os.date('## %Y %m-%d %a')
  assert(type(date) == 'string')
  vim.api.nvim_put({date}, 'c', true, true)
end

function M.is_dark_mode()
  -- returns true if the system is currently running dark mode
  local os = vim.uv.os_uname().sysname
  local is_dark = nil

  if os == 'Linux' then
    local system_style = vim.fn.system('gsettings get org.gnome.desktop.interface color-scheme 2>/dev/null')
    is_dark = system_style:match('dark') ~= nil
  elseif os == 'Darwin' then
    local system_style = vim.fn.system('defaults read -g AppleInterfaceStyle 2>/dev/null')
    is_dark = system_style:match('dark') ~= nil
  elseif os == 'Windows' then
    -- todo detect windows colorscheme
    is_dark = true
  else
    -- default case if OS can't be detected
    vim.print('OS could not be detected')
    is_dark = true
  end

  return is_dark
end

return M
