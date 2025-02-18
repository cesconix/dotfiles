return {
  { -- https://github.com/numToStr/Comment.nvim
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup {
        pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
      }
    end,
    dependencies = {
      { -- https://github.com/JoosepAlviste/nvim-ts-context-commentstring
        'JoosepAlviste/nvim-ts-context-commentstring',
        event = 'BufRead',
        opts = {
          enable_autocmd = false,
        },
      },
    },
  },
}
