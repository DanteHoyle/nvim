local map = vim.keymap.set

-- Clear current highlights with Esc
map('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'Clear highlights' })

-- Toggle line wrapping with Leader + w
map('n', '<Leader>W', '<cmd>set wrap!<CR>', { desc = 'Toggle line wrapping' })

-- Center the screen when moving up or down in a file
map('n', '<C-d>', '<C-d>zz')
map('n', '<C-u>', '<C-u>zz')

-- Delete words in insert mode with Alt + Backspace
map('i', '<BS>', '<C-W>', { desc = 'Delete words with alt + backspace' })

-- Add floating popup to diagnostic jumps
map('n', ']d', function() vim.diagnostic.jump({ count = 1, float = true }) end, { desc = 'Next diagnostic' })
map('n', '[d', function() vim.diagnostic.jump({ count = -1, float = true }) end, { desc = 'Prev diagnostic' })

map("n", "<leader>n", "<cmd>set nu!<CR>", { desc = "toggle line number" })
map("n", "<leader>rn", "<cmd>set rnu!<CR>", { desc = "toggle relative number" })

map("t", "<C-x>", "<C-\\><C-N>", { desc = "terminal escape terminal mode" })

-- Insert Date into file
map('n', '<leader>id', '<cmd>NoteInsertDate<cr>', { desc = 'Insert Date for Notes Heading' })
-- Open current file externally
map('n', '<leader>O', '<cmd>OpenCurrentFile<cr>', { desc = 'Open the current file externally' })
map('n', '<leader>pi', '<cmd>NoteInsertCopiedImage<cr>', { desc = 'Paste currently copied image' })

map('v', 'J', ":move '>+1<CR>gv-gv")
map('v', 'K', ":move '<-2<CR>gv-gv")
