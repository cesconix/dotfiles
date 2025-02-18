return {
  { -- https://github.com/hrsh7th/nvim-cmp
    'hrsh7th/nvim-cmp', -- Completion engine
    event = 'InsertEnter',
    dependencies = {
      { -- https://github.com/L3MON4D3/LuaSnip
        'L3MON4D3/LuaSnip', -- Snippet engine
        build = 'make install_jsregexp',
        dependencies = {
          { -- https://github.com/rafamadriz/friendly-snippets
            'rafamadriz/friendly-snippets',
            config = function()
              require('luasnip.loaders.from_vscode').lazy_load()
              require('luasnip').filetype_extend('typescript', { 'javascript' })
            end,
          },
        },
      },
      -- completion sources
      'hrsh7th/cmp-nvim-lsp', -- https://github.com/hrsh7th/cmp-nvim-lsp
      'hrsh7th/cmp-path', -- https://github.com/hrsh7th/cmp-path
      'saadparwaiz1/cmp_luasnip', -- https://github.com/saadparwaiz1/cmp_luasnip
    },
    config = function()
      local cmp = require 'cmp'
      local luasnip = require 'luasnip'

      luasnip.config.setup {}

      cmp.setup {
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert {
          ['<C-n>'] = cmp.mapping.select_next_item(),
          ['<C-p>'] = cmp.mapping.select_prev_item(),
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-y>'] = cmp.mapping.confirm { select = true },
          ['<C-Space>'] = cmp.mapping.complete {},
          ['<C-l>'] = cmp.mapping(function()
            if luasnip.expand_or_locally_jumpable() then
              luasnip.expand_or_jump()
            end
          end, { 'i', 's' }),
          ['<C-h>'] = cmp.mapping(function()
            if luasnip.locally_jumpable(-1) then
              luasnip.jump(-1)
            end
          end, { 'i', 's' }),
        },
        sources = {
          { name = 'nvim_lsp' },
          { name = 'path' },
          { name = 'luasnip' },
        },
      }
    end,
  },
}
