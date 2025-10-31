return {
  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
    opts = {
      -- enable LSP completions for markdown files
      completions = { lsp = { enabled = true } },
      pipe_table = {
        padding = 0,
      },
    },
  },

  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },

  { 'dhruvasagar/vim-table-mode' },

  {
    "3rd/image.nvim",
    build = false, -- so that it doesn't build the rock https://github.com/3rd/image.nvim/issues/91#issuecomment-2453430239
    opts = {
      backend = "kitty",
      processor = "magick_cli",
      integrations = {
        markdown = {
          only_render_image_at_cursor = true,
        }
      }
    }
  },

  {
    "jpalardy/vim-slime",
    init = function()
      vim.g.slime_target = 'kitty';
    end
  }

}
