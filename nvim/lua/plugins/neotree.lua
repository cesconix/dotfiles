return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {
      window = {
        width = 30,
        mapping_options = {
          noremap = true,
          nowait = true,
        },
        mappings = {
          ['P'] = { 'toggle_preview', config = { use_float = false, use_image_nvim = true } },
          ['oc'] = { 'noop', nowait = false },
          ['od'] = { 'noop', nowait = false },
          ['og'] = { 'noop', nowait = false },
          ['om'] = { 'noop', nowait = false },
          ['on'] = { 'noop', nowait = false },
          ['os'] = { 'noop', nowait = false },
          ['ot'] = { 'noop', nowait = false },
          ['o'] = { 'open' },
        },
      },
    }
  end,
}
