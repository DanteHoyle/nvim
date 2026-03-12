local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- only show cursorline in active window normal mode
autocmd({ "InsertLeave", "WinEnter", "TabEnter", "TermLeave" }, {
  group = augroup("SmartCursorline", { clear = false }),
  desc = "Enable cursorline only in active window",
  callback = function()
    vim.wo.cursorline = vim.bo.buftype == ""
  end,
})
autocmd({ "InsertEnter", "WinLeave", "TabLeave" }, {
  group = augroup("SmartCursorline", { clear = false }),
  desc = "Enable cursorline only in active window",
  callback = function()
    vim.wo.cursorline = false
  end,
})

-- Set folding method to LSP if supported
autocmd('LspAttach', {
  callback = function(args)
    local client = vim.lsp.get_clients({ id = args.data.client_id })[1]
    if client and client:supports_method('textDocument/foldingRange') then
      local win = vim.api.nvim_get_current_win()
      vim.wo[win][0].foldexpr = 'v:lua.vim.lsp.foldexpr()'
    end
  end,
})

-- visually show highlight when yanking text
autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = augroup('YankHLAttach', { clear = true }),
  pattern = '*',
  callback = function()
    vim.highlight.on_yank()
  end,
})

autocmd('FileType', {
  pattern = 'markdown',
  callback = function()
    vim.opt_local.number = false
    vim.opt_local.relativenumber = false
  end
})
