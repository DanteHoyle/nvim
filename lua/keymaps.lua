local u = require 'config.utility'

-- Clear current highlights with Esc
u.nmap('<Esc>', '<cmd>nohlsearch<CR>', 'Clear highlights')

-- Toggle line wrapping with Leader + w
u.nmap('<Leader>W', '<cmd>set wrap!<CR>','Toggle line wrapping')

-- Center the screen when moving up or down in a file
u.nmap('<C-d>', '<C-d>zz')
u.nmap('<C-u>', '<C-u>zz')

-- Delete words in insert mode with Alt + Backspace
u.imap('<BS>', '<C-W>', 'Delete words with alt + backspace')

-- Add floating popup to diagnostic jumps
u.nmap(']d', function() vim.diagnostic.jump({ count = 1, float = true }) end, 'Next diagnostic')
u.nmap('[d', function() vim.diagnostic.jump({ count = -1, float = true }) end, 'Prev diagnostic')

u.nmap('<leader>id', '<cmd>NoteInsertDate<cr>', 'Insert Date for Notes Heading')

-- Open current file externally
u.nmap('<leader>O', '<cmd>OpenCurrentFile<cr>', 'Open the current file externaly')

u.nmap('<leader>pi', '<cmd>NoteInsertCopiedImage<cr>', 'Paste currently copied image')
