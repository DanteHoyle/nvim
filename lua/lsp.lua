local capabilities = require('blink.cmp').get_lsp_capabilities()

vim.lsp.config("*", {
  capabilities = capabilities,
})

vim.lsp.enable({ 'lua_ls', 'vtsls', 'pyright' })

vim.diagnostic.config {
  underline = true,
  virtual_text = {
    spacing = 2,
    prefix = "●",
  },
  update_in_insert = false,
  severity_sort = true,
}
