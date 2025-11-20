return {
  'MeanderingProgrammer/render-markdown.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
  opts = {
    -- enable LSP completions for markdown files
    completions = { lsp = { enabled = true } },
    pipe_table = {
      padding = 0,
    },
  },
}
