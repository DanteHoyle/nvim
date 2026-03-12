return {
  'saghen/blink.cmp',
  dependencies = {},
  version = '1.*',
  opts = {
    keymap = {
      preset = 'default',
      ['<C-f>'] = { 'select_and_accept', 'fallback' },
    },

    sources = {
      default = { 'lazydev', 'lsp', 'path', 'snippets', 'buffer' },
      providers = {
        lazydev = {
          name = "LazyDev",
          module = "lazydev.integrations.blink",
          score_offset = 100,
        }
      }
    },

    fuzzy = { implementation = "lua" }
  },
  opts_extend = { "sources.default" }
}
