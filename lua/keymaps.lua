local util = require 'config.utility'

-- normal mode keymap
local function nmap(keys, func, desc)
  desc = desc or ''
  vim.keymap.set('n', keys, func, { desc = desc })
end

-- insert mode keymap
local function imap(keys, func, desc)
  desc = desc or ''
  vim.keymap.set('i', keys, func, { desc = desc })
end

-- Clear current highlights with Esc
nmap('<Esc>', '<cmd>nohlsearch<CR>', 'Clear highlights')

-- Toggle line wrapping with Leader + w
nmap('<Leader>W', '<cmd>set wrap!<CR>','Toggle line wrapping')

-- Center the screen when moving up or down in a file
nmap('<C-d>', '<C-d>zz')
nmap('<C-u>', '<C-u>zz')

-- Open current file externally
nmap('<leader>O', util.open_current_file, 'Open the current file externaly')

nmap('<leader>pi', util.paste_image_from_clipboard, 'Paste currently copied image')

-- Delete words in insert mode with Alt + Backspace
imap('<BS>', '<C-W>', 'Delete words with alt + backspace')

-- Add floating popup to diagnostic jumps
nmap(']d', function() vim.diagnostic.jump({ count = 1, float = true }) end, 'Next diagnostic')
nmap('[d', function() vim.diagnostic.jump({ count = -1, float = true }) end, 'Prev diagnostic')
