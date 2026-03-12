local capabilities = require('blink.cmp').get_lsp_capabilities()

vim.lsp.config("*", {
  capabilities = capabilities,
})

vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
})

vim.lsp.config("pyright", {
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
        diagnosticMode = 'openFilesOnly',
      },
    },
  },
})

vim.lsp.enable({ 'clangd', 'lua_ls', 'pyright', 'vtsls' })

vim.diagnostic.config {
  underline = true,
  virtual_text = {
    spacing = 2,
    prefix = "●",
  },
  update_in_insert = false,
  severity_sort = true,
}
