local M = {}

local sysname = vim.uv.os_uname().sysname

function M.insert_date()
  local date = os.date('## %Y %m-%d %a')
  assert(type(date) == 'string')
  vim.api.nvim_put({ date }, 'c', true, true)
end

function M.is_dark_mode()
  local is_dark = true
  if sysname == 'Linux' then
    local r = vim.system({ 'gsettings', 'get', 'org.gnome.desktop.interface', 'color-scheme' }, { text = true }):wait()
    is_dark = (r.stdout or ''):match('dark') ~= nil
  elseif sysname == 'Darwin' then
    local r = vim.system({ 'defaults', 'read', '-g', 'AppleInterfaceStyle' }, { text = true }):wait()
    is_dark = (r.stdout or ''):match('dark') ~= nil
  end
  return is_dark
end

function M.setup()
  local cmd = vim.api.nvim_create_user_command
  cmd('NoteInsertDate', M.insert_date, {})
  cmd('OpenCurrentFile', function() vim.ui.open(vim.fn.expand('%')) end, {})
  cmd('RemoveBlankLines', ':g/^\\s*$/d', {})
  cmd('OpenInOkular', function() vim.system({ 'okular', vim.fn.expand("%") }) end, {})
end

return M
