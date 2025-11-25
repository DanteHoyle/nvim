local M = {}
---------------------
--UTILITY FUNCTIONS--
---------------------
-- open the current file externally 
function M.open_current_file()
  local path = vim.fn.expand("%")
  vim.ui.open(path)
end

function M.paste_image_from_clipboard(output_dir)
  -- use default output_dir if none provided
  local home = os.getenv('HOME')
  if not home then
    vim.notify('failed to get HOME from ENV')
    return
  end
  if not output_dir then
    output_dir = home .. '/Pictures/nvim_pastes'
  end

  vim.fn.mkdir(output_dir, 'p')

  -- detect available clipboard tools
  local clipboard_tool
  if os.getenv('WAYLAND_DISPLAY') then
    clipboard_tool = 'wl-paste'
  else
    vim.notify("Couldn't detect clipboard tool")
    return
  end

  -- create file from image clipboard data
  local timestamp = os.date("%Y%m%d_%H%M%S")
  local filename = 'image_' .. timestamp .. '.png'
  local filepath = output_dir .. '/' .. filename
  local cmd = clipboard_tool .. ' > ' .. vim.fn.shellescape(filepath)
  vim.fn.system(cmd)

  local file_was_created_successfully = vim.fn.getfsize(filepath) > 0

  if file_was_created_successfully then
    local markdown_link = string.format('![%s](%s)', filename, filepath)
    vim.api.nvim_put({ markdown_link }, 'c', true, true)
    vim.notify('Copied clipboard contents to ' .. filepath)
  else
    vim.notify('Failed to create file from clipboard contents')
  end
end

function M.insert_date()
  local date = os.date('## %Y %m-%d %a')
  assert(type(date) == 'string')
  vim.api.nvim_put({date}, 'c', true, true)
end

-- normal mode keymap
function M.nmap(keys, func, desc)
  desc = desc or ''
  vim.keymap.set('n', keys, func, { desc = desc })
end

-- insert mode keymap
function M.imap(keys, func, desc)
  desc = desc or ''
  vim.keymap.set('i', keys, func, { desc = desc })
end

vim.api.nvim_create_user_command('NoteInsertDate', M.insert_date, {})
vim.api.nvim_create_user_command('NoteInsertCopiedImage', M.paste_image_from_clipboard, {})
vim.api.nvim_create_user_command('OpenCurrentFile', M.open_current_file, {})

return M
