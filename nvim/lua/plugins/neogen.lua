vim.api.nvim_set_keymap('n', '<leader>n', '<cmd>Neogen<cr>', {})

return {
  'danymat/neogen',
  opts = {
    snippet_engine = 'luasnip',
    enabled = true,
    languages = {
      lua = {
        template = {
          annotation_convention = 'ldoc',
        },
      },
      javascript = {
        template = {
          annotation_convention = 'jsdoc',
        },
      },
      javascriptreact = {
        template = {
          annotation_convention = 'jsdoc',
        },
      },
      typescript = {
        template = {
          annotation_convention = 'tsdoc',
        },
      },
      typescriptreact = {
        template = {
          annotation_convention = 'tsdoc',
        },
      },
    },
  },
}
