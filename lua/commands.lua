local util = require 'config.utility'
local user_command = vim.api.nvim_create_user_command

user_command('NoteInsertDate', util.insert_date, {})
user_command('OpenCurrentFile', util.open_current_file, {})
user_command('RemoveBlankLines', ':g/^\\s*$/d', {})
